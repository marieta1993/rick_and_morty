import 'package:auto_route/auto_route.dart';
import 'package:rick_and_morty/presentation/characters/characters_page.dart';
import 'package:rick_and_morty/presentation/favorites/favorites_page.dart';
import 'package:rick_and_morty/presentation/home/home_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter({super.navigatorKey});

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: HomeRoute.page,
      initial: true,
      children: [
        AutoRoute(page: CharactersRoute.page),
        AutoRoute(page: FavoritesRoute.page),
      ],
    ),
  ];
}
