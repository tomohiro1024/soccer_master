import 'package:flutter/material.dart';
import '../models/quiz.dart';
import '../data/quiz_data.dart';
import 'result_screen.dart';

class QuizScreen extends StatefulWidget {
  final League league;
  final Genre genre;
  final Level level;

  const QuizScreen({
    super.key,
    required this.league,
    required this.genre,
    required this.level,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late List<Quiz> quizzes;
  int currentIndex = 0;
  int correctCount = 0;
  int? selectedIndex;
  bool answered = false;

  @override
  void initState() {
    super.initState();
    quizzes = QuizData.getQuizzes(widget.league, widget.genre, widget.level);
    quizzes.shuffle();
    quizzes = quizzes.take(5).toList();
  }

  void _selectAnswer(int index) {
    if (answered) return;

    setState(() {
      selectedIndex = index;
      answered = true;
      if (index == quizzes[currentIndex].correctIndex) {
        correctCount++;
      }
    });

    Future.delayed(const Duration(milliseconds: 1000), () {
      if (!mounted) return;
      if (currentIndex < quizzes.length - 1) {
        setState(() {
          currentIndex++;
          selectedIndex = null;
          answered = false;
        });
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(
              correctCount: correctCount,
              totalCount: quizzes.length,
              league: widget.league,
              genre: widget.genre,
            ),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final quiz = quizzes[currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('問題 ${currentIndex + 1} / ${quizzes.length}'),
        backgroundColor: const Color(0xFF1565C0),
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('クイズを終了しますか？'),
                content: const Text('現在の進捗はリセットされます。'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('キャンセル'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    child: const Text('終了する'),
                  ),
                ],
              ),
            );
          },
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
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                LinearProgressIndicator(
                  value: (currentIndex + 1) / quizzes.length,
                  backgroundColor: Colors.white30,
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                ),
                const SizedBox(height: 32),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      if (quiz.imageUrl != null)
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            quiz.imageUrl!,
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return const SizedBox(
                                width: 150,
                                height: 150,
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ),
                              );
                            },
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                width: 150,
                                height: 150,
                                color: Colors.grey[300],
                                child: const Icon(
                                  Icons.image_not_supported,
                                  size: 50,
                                  color: Colors.grey,
                                ),
                              );
                            },
                          ),
                        ),
                      if (quiz.imageUrl != null) const SizedBox(height: 16),
                      Text(
                        quiz.question,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1565C0),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                Expanded(
                  child: ListView.builder(
                    itemCount: quiz.options.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: _buildOptionButton(index, quiz.options[index], quiz.correctIndex),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOptionButton(int index, String option, int correctIndex) {
    Color backgroundColor = Colors.white;
    Color textColor = const Color(0xFF1B5E20);
    IconData? icon;

    if (answered) {
      if (index == correctIndex) {
        backgroundColor = Colors.green;
        textColor = Colors.white;
        icon = Icons.check_circle;
      } else if (index == selectedIndex) {
        backgroundColor = Colors.red;
        textColor = Colors.white;
        icon = Icons.cancel;
      }
    }

    return GestureDetector(
      onTap: () => _selectAnswer(index),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: answered && (index == correctIndex || index == selectedIndex)
                    ? Colors.white30
                    : const Color(0xFF1565C0).withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Center(
                child: icon != null
                    ? Icon(icon, color: Colors.white, size: 24)
                    : Text(
                        String.fromCharCode(65 + index),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                option,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: textColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
