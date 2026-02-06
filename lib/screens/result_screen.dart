import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/quiz.dart';
import '../providers/perfect_scores_provider.dart';

class ResultScreen extends ConsumerStatefulWidget {
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

  @override
  ConsumerState<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends ConsumerState<ResultScreen> {
  @override
  void initState() {
    super.initState();
    _vibrate();
    _savePerfectScore();
    _requestReview();
  }

  Future<void> _requestReview() async {
    final prefs = await SharedPreferences.getInstance();
    final hasShown = prefs.getBool('hasShownReview') ?? false;
    if (hasShown) return;

    final inAppReview = InAppReview.instance;
    if (await inAppReview.isAvailable()) {
      await inAppReview.requestReview();
      await prefs.setBool('hasShownReview', true);
    }
  }

  void _vibrate() {
    // 結果に応じて振動パターンを変える
    final percentage = widget.correctCount / widget.totalCount;
    if (percentage == 1.0) {
      // パーフェクト！強めの振動
      HapticFeedback.heavyImpact();
    } else if (percentage >= 0.6) {
      // 良い結果：中程度の振動
      HapticFeedback.mediumImpact();
    } else {
      // 軽い振動
      HapticFeedback.lightImpact();
    }
  }

  Future<void> _savePerfectScore() async {
    if (widget.correctCount == widget.totalCount) {
      await ref
          .read(perfectScoresProvider(
            (league: widget.league, genre: widget.genre),
          ).notifier)
          .savePerfect(widget.level);
    }
  }

  String _getMessage() {
    final percentage = widget.correctCount / widget.totalCount;
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
    final percentage = widget.correctCount / widget.totalCount;
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
                        '${widget.correctCount} / ${widget.totalCount}',
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
                    context.go('/leagues/${widget.league.name}/genres/${widget.genre.name}/levels');
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
                    context.go('/');
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
