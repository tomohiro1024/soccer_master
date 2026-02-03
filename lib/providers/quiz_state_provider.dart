import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/quiz.dart';
import '../data/quiz_data.dart';

class QuizState {
  final List<Quiz> quizzes;
  final int currentIndex;
  final int correctCount;
  final int? selectedIndex;
  final bool answered;

  const QuizState({
    required this.quizzes,
    this.currentIndex = 0,
    this.correctCount = 0,
    this.selectedIndex,
    this.answered = false,
  });

  QuizState copyWith({
    List<Quiz>? quizzes,
    int? currentIndex,
    int? correctCount,
    int? selectedIndex,
    bool? answered,
    bool clearSelectedIndex = false,
  }) {
    return QuizState(
      quizzes: quizzes ?? this.quizzes,
      currentIndex: currentIndex ?? this.currentIndex,
      correctCount: correctCount ?? this.correctCount,
      selectedIndex: clearSelectedIndex ? null : (selectedIndex ?? this.selectedIndex),
      answered: answered ?? this.answered,
    );
  }

  bool get isLastQuestion => currentIndex >= quizzes.length - 1;
  Quiz get currentQuiz => quizzes[currentIndex];
}

final quizStateProvider = StateNotifierProvider.autoDispose
    .family<QuizStateNotifier, QuizState, ({League league, Genre genre, Level level})>(
  (ref, params) => QuizStateNotifier(params.league, params.genre, params.level),
);

class QuizStateNotifier extends StateNotifier<QuizState> {
  QuizStateNotifier(League league, Genre genre, Level level)
      : super(QuizState(quizzes: _initQuizzes(league, genre, level)));

  static List<Quiz> _initQuizzes(League league, Genre genre, Level level) {
    final quizzes = QuizData.getQuizzes(league, genre, level);
    quizzes.shuffle();
    return quizzes.take(5).toList();
  }

  void selectAnswer(int index) {
    if (state.answered) return;

    final isCorrect = index == state.currentQuiz.correctIndex;
    state = state.copyWith(
      selectedIndex: index,
      answered: true,
      correctCount: isCorrect ? state.correctCount + 1 : null,
    );
  }

  void handleTimeout() {
    if (state.answered) return;
    state = state.copyWith(answered: true);
  }

  bool advance() {
    if (state.isLastQuestion) return false;
    state = state.copyWith(
      currentIndex: state.currentIndex + 1,
      answered: false,
      clearSelectedIndex: true,
    );
    return true;
  }
}
