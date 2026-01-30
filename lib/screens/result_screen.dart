import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/quiz.dart';

class ResultScreen extends StatelessWidget {
  final int correctCount;
  final int totalCount;
  final League league;
  final Genre genre;
  final Level level;

  const ResultScreen({
    super.key,
    required this.correctCount,
    required this.totalCount,
    required this.league,
    required this.genre,
    required this.level,
  });

  Future<void> _savePerfectScore() async {
    if (correctCount == totalCount) {
      final prefs = await SharedPreferences.getInstance();
      final key = 'perfect_${league.name}_${genre.name}_${level.name}';
      await prefs.setBool(key, true);
    }
  }

  String _getMessage() {
    final percentage = correctCount / totalCount;
    if (percentage == 1.0) {
      return 'パーフェクト！すごい！';
    } else if (percentage >= 0.8) {
      return '素晴らしい！';
    } else if (percentage >= 0.6) {
      return 'いい調子！';
    } else if (percentage >= 0.4) {
      return 'もう少し！';
    } else {
      return 'がんばろう！';
    }
  }

  Color _getMessageColor() {
    final percentage = correctCount / totalCount;
    if (percentage >= 0.8) {
      return Colors.amber;
    } else if (percentage >= 0.6) {
      return Colors.lightGreen;
    } else {
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    _savePerfectScore();

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF1565C0), Color(0xFF42A5F5)],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.emoji_events,
                  size: 100,
                  color: Colors.amber,
                ),
                const SizedBox(height: 24),
                const Text(
                  'クイズ結果',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 32),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 48,
                    vertical: 24,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '$correctCount / $totalCount',
                        style: const TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1565C0),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        '正解',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  _getMessage(),
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: _getMessageColor(),
                  ),
                ),
                const SizedBox(height: 48),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFF1565C0),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'もう一度挑戦する',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                  child: const Text(
                    'ホームに戻る',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
