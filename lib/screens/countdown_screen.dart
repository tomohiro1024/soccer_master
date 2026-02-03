import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../models/quiz.dart';
import '../providers/countdown_provider.dart';

class CountdownScreen extends ConsumerWidget {
  final League league;
  final Genre genre;
  final Level level;

  const CountdownScreen({
    super.key,
    required this.league,
    required this.genre,
    required this.level,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(countdownProvider);

    ref.listen<int>(countdownProvider, (previous, next) {
      if (next == 0) {
        context.pushReplacement(
          '/quiz/${league.name}/${genre.name}/${level.name}',
        );
      }
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF1976D2), Color(0xFF64B5F6)],
          ),
        ),
        child: Center(
          child: Text(
            count == 0 ? '1' : '$count',
            style: const TextStyle(
              fontSize: 120,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
