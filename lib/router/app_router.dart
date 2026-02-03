import 'package:go_router/go_router.dart';
import '../models/quiz.dart';
import '../screens/home_screen.dart';
import '../screens/league_selection_screen.dart';
import '../screens/genre_selection_screen.dart';
import '../screens/level_selection_screen.dart';
import '../screens/countdown_screen.dart';
import '../screens/quiz_screen.dart';
import '../screens/result_screen.dart';

League leagueFromString(String value) {
  return League.values.firstWhere(
    (e) => e.name == value,
    orElse: () => League.jLeague,
  );
}

Genre genreFromString(String value) {
  return Genre.values.firstWhere(
    (e) => e.name == value,
    orElse: () => Genre.teamLogo,
  );
}

Level levelFromString(String value) {
  return Level.values.firstWhere(
    (e) => e.name == value,
    orElse: () => Level.level1,
  );
}

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/leagues',
      builder: (context, state) => const LeagueSelectionScreen(),
    ),
    GoRoute(
      path: '/leagues/:league/genres',
      builder: (context, state) {
        final league = leagueFromString(state.pathParameters['league']!);
        return GenreSelectionScreen(league: league);
      },
    ),
    GoRoute(
      path: '/leagues/:league/genres/:genre/levels',
      builder: (context, state) {
        final league = leagueFromString(state.pathParameters['league']!);
        final genre = genreFromString(state.pathParameters['genre']!);
        return LevelSelectionScreen(league: league, genre: genre);
      },
    ),
    GoRoute(
      path: '/quiz/:league/:genre/:level/countdown',
      builder: (context, state) {
        final league = leagueFromString(state.pathParameters['league']!);
        final genre = genreFromString(state.pathParameters['genre']!);
        final level = levelFromString(state.pathParameters['level']!);
        return CountdownScreen(league: league, genre: genre, level: level);
      },
    ),
    GoRoute(
      path: '/quiz/:league/:genre/:level',
      builder: (context, state) {
        final league = leagueFromString(state.pathParameters['league']!);
        final genre = genreFromString(state.pathParameters['genre']!);
        final level = levelFromString(state.pathParameters['level']!);
        return QuizScreen(league: league, genre: genre, level: level);
      },
    ),
    GoRoute(
      path: '/quiz/:league/:genre/:level/result',
      builder: (context, state) {
        final league = leagueFromString(state.pathParameters['league']!);
        final genre = genreFromString(state.pathParameters['genre']!);
        final level = levelFromString(state.pathParameters['level']!);
        final correct = int.tryParse(state.uri.queryParameters['correct'] ?? '0') ?? 0;
        final total = int.tryParse(state.uri.queryParameters['total'] ?? '0') ?? 0;
        return ResultScreen(
          correctCount: correct,
          totalCount: total,
          league: league,
          genre: genre,
          level: level,
        );
      },
    ),
  ],
);
