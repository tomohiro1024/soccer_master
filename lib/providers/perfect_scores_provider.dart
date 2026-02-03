import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/quiz.dart';
import 'shared_preferences_provider.dart';

final perfectScoresProvider = StateNotifierProvider.family<
    PerfectScoresNotifier, Map<Level, bool>, ({League league, Genre genre})>(
  (ref, params) {
    final prefs = ref.watch(sharedPreferencesProvider);
    return PerfectScoresNotifier(prefs, params.league, params.genre);
  },
);

class PerfectScoresNotifier extends StateNotifier<Map<Level, bool>> {
  final SharedPreferences _prefs;
  final League _league;
  final Genre _genre;

  PerfectScoresNotifier(this._prefs, this._league, this._genre)
      : super({}) {
    _load();
  }

  void _load() {
    final Map<Level, bool> results = {};
    for (final level in Level.values) {
      final key = 'perfect_${_league.name}_${_genre.name}_${level.name}';
      results[level] = _prefs.getBool(key) ?? false;
    }
    state = results;
  }

  Future<void> savePerfect(Level level) async {
    final key = 'perfect_${_league.name}_${_genre.name}_${level.name}';
    await _prefs.setBool(key, true);
    state = {...state, level: true};
  }
}
