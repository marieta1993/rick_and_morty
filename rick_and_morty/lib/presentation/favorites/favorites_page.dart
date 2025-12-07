import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:rick_and_morty/domain/domain.dart';
import 'package:rick_and_morty/presentation/characters/bloc/characters_bloc.dart';
import 'package:rick_and_morty/presentation/widgets/character_card.dart';
import 'package:ui/ui.dart';

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
                          children: [
                            SizedBox(height: 120.h),
                            const _EmptyFavoritesView(),
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
                                padding: EdgeInsets.symmetric(
                                  horizontal: 24.w,
                                ),
                                color: Theme.of(
                                  context,
                                ).colorScheme.errorContainer,
                                child: Icon(
                                  Icons.delete,
                                  size: 24.sp,
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

  void _onFavoriteTap(BuildContext context, CharacterModel character) {
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
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
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
                Icon(Icons.sort, size: 20.sp),
                SizedBox(width: 8.w),
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
          size: 64.sp,
          color: Theme.of(context).colorScheme.primary,
        ),
        SizedBox(height: 16.h),
        Text(
          'Пока нет избранных персонажей',
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 8.h),
        Text(
          'Добавьте персонажей на главном экране.',
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
