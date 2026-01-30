import 'dart:async';
import 'package:flutter/material.dart';
import '../models/quiz.dart';
import 'quiz_screen.dart';

class CountdownScreen extends StatefulWidget {
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
  State<CountdownScreen> createState() => _CountdownScreenState();
}

class _CountdownScreenState extends State<CountdownScreen> {
  int _count = 3;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }

      if (_count > 1) {
        setState(() {
          _count--;
        });
      } else {
        timer.cancel();
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => QuizScreen(
              league: widget.league,
              genre: widget.genre,
              level: widget.level,
            ),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
            '$_count',
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
