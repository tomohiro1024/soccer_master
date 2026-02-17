import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/quiz.dart';

class GenreSelectionScreen extends StatelessWidget {
  final League league;

  const GenreSelectionScreen({super.key, required this.league});

  @override
  Widget build(BuildContext context) {
    final leagueName = league == League.jLeague ? 'Jリーグ' : 'プレミアリーグ';

    return Scaffold(
      appBar: AppBar(
        title: Text('$leagueName - ジャンル選択'),
        backgroundColor: const Color(0xFF1565C0),
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                const Text(
                  'クイズのジャンルを\n選んでください',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 48),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildGenreButton(
                      context,
                      Genre.teamLogo,
                      Icons.shield,
                      'チームロゴ',
                    ),
                    const SizedBox(height: 24),
                    _buildGenreButton(
                      context,
                      Genre.playerName,
                      Icons.person,
                      '',
                    ),
                    const SizedBox(height: 24),
                    _buildGenreButton(
                      context,
                      Genre.stadium,
                      Icons.stadium,
                      '',
                    ),
                  ],
                ),

                const SizedBox(height: 24),
                const Text(
                  '※他のジャンルは随時追加予定です！\nお楽しみに！',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGenreButton(
    BuildContext context,
    Genre genre,
    IconData icon,
    String title,
  ) {
    return GestureDetector(
      onTap: () {
        context.push('/leagues/${league.name}/genres/${genre.name}/levels');
      },
      child: Container(
        height: 120,
        width: 120,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                color: const Color(0xFF1565C0),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(icon, size: 36, color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1565C0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
