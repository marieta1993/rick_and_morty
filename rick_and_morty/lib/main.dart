import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/config/locator/service_locator.dart';
import 'package:rick_and_morty/config/routes/app_router.dart';
import 'package:rick_and_morty/core/observer/app_bloc_observer.dart';
import 'package:rick_and_morty/core/theme/app_theme.dart';
import 'package:rick_and_morty/domain/entities/app_theme_mode.dart';
import 'package:rick_and_morty/presentation/theme/bloc/theme_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  Bloc.observer = AppBlocObserver();

  final appRouter = AppRouter();

  runApp(RickAndMortyApp(appRouter: appRouter));
}

class RickAndMortyApp extends StatelessWidget {
  const RickAndMortyApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ThemeBloc>()..add(const ThemeEvent.started()),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          final mode = state.maybeWhen(
            loaded: (mode, __) => mode,
            orElse: () => AppThemeMode.light,
          );

          return MaterialApp.router(
            title: 'Rick and Morty',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: mode == AppThemeMode.dark
                ? ThemeMode.dark
                : ThemeMode.light,
            routerDelegate: appRouter.delegate(),
            routeInformationParser: appRouter.defaultRouteParser(),
            routeInformationProvider: appRouter.routeInfoProvider(),
          );
        },
      ),
    );
  }
}
