import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final countdownProvider =
    StateNotifierProvider.autoDispose<CountdownNotifier, int>(
  (ref) => CountdownNotifier(),
);

class CountdownNotifier extends StateNotifier<int> {
  Timer? _timer;

  CountdownNotifier() : super(3) {
    _startCountdown();
  }

  void _startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state > 1) {
        state = state - 1;
      } else {
        state = 0;
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
