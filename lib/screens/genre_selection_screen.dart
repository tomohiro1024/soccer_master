import 'package:flutter/material.dart';
import '../models/quiz.dart';
import 'quiz_screen.dart';

class GenreSelectionScreen extends StatelessWidget {
  final Country country;

  const GenreSelectionScreen({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    final countryName = country == Country.japan ? '日本' : 'イングランド';

    return Scaffold(
      appBar: AppBar(
        title: Text('$countryName - ジャンル選択'),
        backgroundColor: const Color(0xFF1B5E20),
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF2E7D32), Color(0xFF81C784)],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                _buildGenreButton(
                  context,
                  Genre.teamLogo,
                  Icons.shield,
                  'チームロゴクイズ',
                  'チーム名を当てよう！',
                ),
                const SizedBox(height: 24),
                _buildGenreButton(
                  context,
                  Genre.playerName,
                  Icons.person,
                  '選手名当てクイズ',
                  '選手を当てよう！',
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
    String subtitle,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QuizScreen(country: country, genre: genre),
          ),
        );
      },
      child: Container(
        width: 280,
        padding: const EdgeInsets.all(20),
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
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: const Color(0xFF1B5E20),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                icon,
                size: 36,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1B5E20),
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
          ],
        ),
      ),
    );
  }
}
