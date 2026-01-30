import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/quiz.dart';
import 'countdown_screen.dart';

class LevelSelectionScreen extends StatefulWidget {
  final League league;
  final Genre genre;

  const LevelSelectionScreen({
    super.key,
    required this.league,
    required this.genre,
  });

  @override
  State<LevelSelectionScreen> createState() => _LevelSelectionScreenState();
}

class _LevelSelectionScreenState extends State<LevelSelectionScreen> {
  Map<Level, bool> perfectLevels = {};

  @override
  void initState() {
    super.initState();
    _loadPerfectScores();
  }

  Future<void> _loadPerfectScores() async {
    final prefs = await SharedPreferences.getInstance();
    final Map<Level, bool> results = {};
    for (final level in Level.values) {
      final key = 'perfect_${widget.league.name}_${widget.genre.name}_${level.name}';
      results[level] = prefs.getBool(key) ?? false;
    }
    setState(() {
      perfectLevels = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    final leagueName = widget.league == League.jLeague ? 'Jリーグ' : 'プレミアリーグ';
    final genreName = widget.genre == Genre.teamLogo ? 'チームロゴ' : '選手名当て';

    return Scaffold(
      appBar: AppBar(
        title: Text('$leagueName - $genreName'),
        backgroundColor: const Color(0xFF1565C0),
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF1976D2), Color(0xFF64B5F6)],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'レベルを選んでください',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 48),
                _buildLevelButton(
                  context,
                  Level.level1,
                  'Level 1',
                  '初級 - 基本的な問題',
                  1,
                ),
                const SizedBox(height: 16),
                _buildLevelButton(
                  context,
                  Level.level2,
                  'Level 2',
                  '中級 - 少し難しい問題',
                  2,
                ),
                const SizedBox(height: 16),
                _buildLevelButton(
                  context,
                  Level.level3,
                  'Level 3',
                  '上級 - 難問に挑戦！',
                  3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLevelButton(
    BuildContext context,
    Level level,
    String title,
    String subtitle,
    int starCount,
  ) {
    final isPerfect = perfectLevels[level] ?? false;

    return GestureDetector(
      onTap: () async {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CountdownScreen(
              league: widget.league,
              genre: widget.genre,
              level: level,
            ),
          ),
        );
        _loadPerfectScores();
      },
      child: Stack(
        children: [
          Container(
            width: 280,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: isPerfect ? Colors.yellow : Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1565C0),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      starCount,
                      (index) => const Icon(
                        Icons.star,
                        size: 18,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1565C0),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (isPerfect)
            const Positioned(
              right: 12,
              bottom: 8,
              child: Text(
                '済',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
