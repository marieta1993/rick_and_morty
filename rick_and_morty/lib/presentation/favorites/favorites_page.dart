import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rick_and_morty/core/widgets/app_error_view.dart';
import 'package:rick_and_morty/core/widgets/app_loading_indicator.dart';
import 'package:rick_and_morty/domain/entities/character.dart';
import 'package:rick_and_morty/domain/enums/favorite_sort.dart';
import 'package:rick_and_morty/presentation/characters/bloc/characters_bloc.dart';
import 'package:rick_and_morty/presentation/widgets/character_card.dart';

import 'bloc/favorites_bloc.dart';

@RoutePage()
class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavoritesBloc, FavoritesState>(
      listener: (context, state) {
        state.maybeWhen(
          loaded: (_, __, error) {
            context.read<CharactersBloc>().add(
              const CharactersEvent.favoritesRefreshed(),
            );
            if (error != null) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(error.message)));
            }
          },
          error: (error) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(error.message)));
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        final isInitial = state.maybeWhen(
          initial: () => true,
          orElse: () => false,
        );
        if (isInitial) {
          final bloc = context.read<FavoritesBloc>();
          Future.microtask(
            () =>
                bloc.add(const FavoritesEvent.started(sort: FavoriteSort.name)),
          );
          return const SizedBox.shrink();
        }

        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Center(child: AppLoadingIndicator()),
          error: (error) => AppErrorView(
            message: error.message,
            onRetry: () => context.read<FavoritesBloc>().add(
              const FavoritesEvent.refresh(),
            ),
          ),
          loaded: (characters, sort, error) => Column(
            children: [
              _FavoritesToolbar(
                currentSort: sort,
                onSortSelected: (selectedSort) =>
                    _onSortSelected(context, selectedSort),
              ),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () => _onRefresh(context),
                  child: characters.isEmpty
                      ? ListView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          children: const [
                            SizedBox(height: 120),
                            _EmptyFavoritesView(),
                          ],
                        )
                      : ListView.builder(
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemCount: characters.length,
                          itemBuilder: (context, index) {
                            final character = characters[index];
                            return Dismissible(
                              key: ValueKey<int>(character.id),
                              direction: DismissDirection.endToStart,
                              background: Container(
                                alignment: Alignment.centerRight,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 24,
                                ),
                                color: Theme.of(
                                  context,
                                ).colorScheme.errorContainer,
                                child: Icon(
                                  Icons.delete,
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onErrorContainer,
                                ),
                              ),
                              onDismissed: (_) {
                                context.read<FavoritesBloc>().add(
                                  FavoritesEvent.removeFavorite(character.id),
                                );
                              },
                              child: CharacterCard(
                                character: character,
                                isFavorite: true,
                                onFavoriteTap: () =>
                                    _onFavoriteTap(context, character),
                              ),
                            );
                          },
                        ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _onRefresh(BuildContext context) async {
    context.read<FavoritesBloc>().add(const FavoritesEvent.refresh());
  }

  void _onSortSelected(BuildContext context, FavoriteSort sort) {
    context.read<FavoritesBloc>().add(FavoritesEvent.sortChanged(sort));
  }

  void _onFavoriteTap(BuildContext context, Character character) {
    context.read<FavoritesBloc>().add(FavoritesEvent.toggleFavorite(character));
  }
}

class _FavoritesToolbar extends StatelessWidget {
  const _FavoritesToolbar({
    required this.currentSort,
    required this.onSortSelected,
  });

  final FavoriteSort currentSort;
  final ValueChanged<FavoriteSort> onSortSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Избранные персонажи',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          PopupMenuButton<FavoriteSort>(
            initialValue: currentSort,
            onSelected: onSortSelected,
            itemBuilder: (context) => const [
              PopupMenuItem(
                value: FavoriteSort.name,
                child: Text('Сортировать по имени'),
              ),
              PopupMenuItem(
                value: FavoriteSort.status,
                child: Text('Сортировать по статусу'),
              ),
            ],
            child: Row(
              children: [
                const Icon(Icons.sort),
                const SizedBox(width: 8),
                Text(_sortLabel(currentSort)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static String _sortLabel(FavoriteSort sort) {
    switch (sort) {
      case FavoriteSort.name:
        return 'По имени';
      case FavoriteSort.status:
        return 'По статусу';
    }
  }
}

class _EmptyFavoritesView extends StatelessWidget {
  const _EmptyFavoritesView();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.star_border,
          size: 64,
          color: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(height: 16),
        Text(
          'Пока нет избранных персонажей',
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          'Добавьте персонажей на главном экране.',
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
