import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/quiz.dart';
import '../data/quiz_data.dart';

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

class _QuizScreenState extends State<QuizScreen>
    with TickerProviderStateMixin {
  late List<Quiz> quizzes;
  int currentIndex = 0;
  int correctCount = 0;
  int? selectedIndex;
  bool answered = false;

  late AnimationController _timerController;
  static const int countdownSeconds = 20;

  @override
  void initState() {
    super.initState();
    quizzes = QuizData.getQuizzes(widget.league, widget.genre, widget.level);
    quizzes.shuffle();
    quizzes = quizzes.take(5).toList();

    _timerController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: countdownSeconds),
    );
    _timerController.addStatusListener(_onTimerComplete);
    _startTimer();
  }

  @override
  void dispose() {
    _timerController.removeStatusListener(_onTimerComplete);
    _timerController.dispose();
    super.dispose();
  }

  void _startTimer() {
    _timerController.forward(from: 0.0);
  }

  void _onTimerComplete(AnimationStatus status) {
    if (status == AnimationStatus.completed && !answered) {
      _handleTimeout();
    }
  }

  void _handleTimeout() {
    if (answered) return;

    setState(() {
      answered = true;
    });

    Future.delayed(const Duration(milliseconds: 1000), () {
      if (!mounted) return;
      if (currentIndex < quizzes.length - 1) {
        setState(() {
          currentIndex++;
          selectedIndex = null;
          answered = false;
        });
        _startTimer();
      } else {
        context.pushReplacement(
          '/quiz/${widget.league.name}/${widget.genre.name}/${widget.level.name}/result?correct=$correctCount&total=${quizzes.length}',
        );
      }
    });
  }

  void _selectAnswer(int index) {
    if (answered) return;

    _timerController.stop();

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
        _startTimer();
      } else {
        context.pushReplacement(
          '/quiz/${widget.league.name}/${widget.genre.name}/${widget.level.name}/result?correct=$correctCount&total=${quizzes.length}',
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final quiz = quizzes[currentIndex];
    double height = MediaQuery.of(context).size.height;

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
                      context.pop();
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
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                LinearProgressIndicator(
                  value: (currentIndex + 1) / quizzes.length,
                  backgroundColor: Colors.white30,
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                ),
                const SizedBox(height: 15),
                Container(
                  height: height * 0.3,
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
                            width: 190,
                            height: height * 0.19,
                            fit: BoxFit.contain,
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
                const SizedBox(height: 10),
                AnimatedBuilder(
                  animation: _timerController,
                  builder: (context, child) {
                    final remainingSeconds =
                        ((1 - _timerController.value) * countdownSeconds).ceil();
                    return Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.timer,
                              color: Colors.white,
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '残り$remainingSeconds秒',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: LinearProgressIndicator(
                            value: 1 - _timerController.value,
                            backgroundColor: Colors.white30,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              _timerController.value > 0.75
                                  ? Colors.red
                                  : _timerController.value > 0.5
                                      ? Colors.orange
                                      : Colors.green,
                            ),
                            minHeight: 8,
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    );
                  },
                ),
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
