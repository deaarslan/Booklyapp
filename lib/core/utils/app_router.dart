import 'package:go_router/go_router.dart';
import 'package:test_app/Featuers/home/presenttation/views/book_ditalis_view.dart';
import 'package:test_app/Featuers/home/presenttation/views/home_view.dart';
import 'package:test_app/Featuers/search/presentation/views/search_view.dart';

import '../../Featuers/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
// GoRouter configuration
  static const KHomeView = '/homeView';
  static const KBookDetailsView = '/bookDetailsView';
  static const KsearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: KsearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const splashView(),
      ),
      GoRoute(
        path: KHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: KBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
