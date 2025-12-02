import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/config/locator/service_locator.dart';
import 'package:rick_and_morty/domain/entities/app_theme_mode.dart';
import 'package:rick_and_morty/config/routes/app_router.dart';
import 'package:rick_and_morty/presentation/characters/bloc/characters_bloc.dart';
import 'package:rick_and_morty/presentation/favorites/bloc/favorites_bloc.dart';
import 'package:rick_and_morty/presentation/theme/bloc/theme_bloc.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CharactersBloc>(
          create: (_) => getIt<CharactersBloc>(),
        ),
        BlocProvider<FavoritesBloc>(
          create: (_) => getIt<FavoritesBloc>(),
        ),
      ],
      child: AutoTabsScaffold(
        routes: const [
          CharactersRoute(),
          FavoritesRoute(),
        ],
        appBarBuilder: (context, tabsRouter) {
          return AppBar(
            title: Text(_title(tabsRouter.activeIndex)),
            actions: [
              BlocBuilder<ThemeBloc, ThemeState>(
                builder: (context, state) {
                  final mode = state.maybeWhen(
                    loaded: (mode, __) => mode,
                    orElse: () => AppThemeMode.light,
                  );
                  final icon = mode == AppThemeMode.dark
                      ? Icons.dark_mode
                      : Icons.light_mode;
                  return IconButton(
                    tooltip: 'Переключить тему',
                    onPressed: () => context
                        .read<ThemeBloc>()
                        .add(const ThemeEvent.toggled()),
                    icon: Icon(icon),
                  );
                },
              ),
            ],
          );
        },
        bottomNavigationBuilder: (context, tabsRouter) {
          return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) => tabsRouter.setActiveIndex(index),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.people_alt_outlined),
                activeIcon: Icon(Icons.people_alt),
                label: 'Персонажи',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star_border),
                activeIcon: Icon(Icons.star),
                label: 'Избранное',
              ),
            ],
          );
        },
      ),
    );
  }

  String _title(int index) {
    switch (index) {
      case 0:
        return 'Персонажи';
      case 1:
        return 'Избранное';
      default:
        return 'Rick & Morty';
    }
  }
}

