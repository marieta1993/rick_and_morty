import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'package:rick_and_morty/core/widgets/app_error_view.dart';
import 'package:rick_and_morty/core/widgets/app_loading_indicator.dart';
import 'package:rick_and_morty/domain/domain.dart';
import 'package:rick_and_morty/presentation/widgets/character_card.dart';
import 'package:rick_and_morty/presentation/favorites/bloc/favorites_bloc.dart';

import 'bloc/characters_bloc.dart';

@RoutePage()
class CharactersPage extends StatefulWidget {
  const CharactersPage({super.key});

  @override
  State<CharactersPage> createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  late final PagingController<int, CharacterModel> _pagingController;
  bool _didInit = false;

  @override
  void initState() {
    super.initState();
    _pagingController = PagingController<int, CharacterModel>(firstPageKey: 1);
    _pagingController.addPageRequestListener(_onPageRequested);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_didInit) {
      _didInit = true;
      context.read<CharactersBloc>().add(const CharactersEvent.started());
    }
  }

  @override
  void dispose() {
    _pagingController.removePageRequestListener(_onPageRequested);
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CharactersBloc, CharactersState>(
      listener: _onStateChange,
      builder: (context, state) {
        final favoriteIds = state.maybeWhen(
          loaded: (_, __, ___, ____, favoriteIds, _____) => favoriteIds,
          error: (_, __, ___, ____, favoriteIds) => favoriteIds,
          orElse: () => <int>{},
        );

        return RefreshIndicator(
          onRefresh: () async {
            context.read<CharactersBloc>().add(const CharactersEvent.refresh());
            _pagingController.refresh();
          },
          child: PagedListView<int, CharacterModel>(
            pagingController: _pagingController,
            builderDelegate: PagedChildBuilderDelegate<CharacterModel>(
              itemBuilder: (context, character, index) {
                final isFavorite = favoriteIds.contains(character.id);
                return CharacterCard(
                  character: character,
                  isFavorite: isFavorite,
                  onFavoriteTap: () => _onFavoriteTap(character),
                );
              },
              firstPageProgressIndicatorBuilder: (_) =>
                  const Center(child: AppLoadingIndicator()),
              newPageProgressIndicatorBuilder: (_) => const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Center(child: AppLoadingIndicator()),
              ),
              firstPageErrorIndicatorBuilder: (_) => AppErrorView(
                message: (_pagingController.error ?? 'Ошибка загрузки')
                    .toString(),
                onRetry: _pagingController.refresh,
              ),
              newPageErrorIndicatorBuilder: (_) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Center(
                  child: TextButton(
                    onPressed: _pagingController.retryLastFailedRequest,
                    child: const Text('Повторить'),
                  ),
                ),
              ),
              noItemsFoundIndicatorBuilder: (_) => const _EmptyCharactersView(),
            ),
          ),
        );
      },
    );
  }

  void _onPageRequested(int pageKey) {
    context.read<CharactersBloc>().add(CharactersEvent.pageRequested(pageKey));
  }

  void _onFavoriteTap(CharacterModel character) {
    context.read<CharactersBloc>().add(
      CharactersEvent.toggleFavorite(character),
    );
    context.read<FavoritesBloc>().add(const FavoritesEvent.refresh());
  }

  void _onStateChange(BuildContext context, CharactersState state) {
    state.maybeWhen(
      loaded: (page, characters, pageItems, hasMore, _, error) {
        if (pageItems.isEmpty && characters.isNotEmpty) {
          if (page == 1) {
            _pagingController.value = PagingState(
              itemList: characters,
              nextPageKey: hasMore ? page + 1 : null,
              error: null,
            );
          }
        } else {
          final nextPageKey = hasMore ? page + 1 : null;
          if (page == 1) {
            _pagingController.value = PagingState(
              itemList: pageItems,
              nextPageKey: nextPageKey,
              error: null,
            );
          } else {
            if (hasMore) {
              _pagingController.appendPage(pageItems, nextPageKey);
            } else {
              _pagingController.appendLastPage(pageItems);
            }
          }
        }

        if (error != null) {
          _showError(context, error.message);
        }
      },
      error: (error, page, characters, hasMore, _) {
        if (page == 1) {
          _pagingController.value = PagingState(
            itemList: const [],
            nextPageKey: page,
            error: error.message,
          );
        } else {
          _pagingController.error = error.message;
        }
        _showError(context, error.message);
      },
      orElse: () {},
    );
  }

  void _showError(BuildContext context, String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }
}

class _EmptyCharactersView extends StatelessWidget {
  const _EmptyCharactersView();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.people_outline,
          size: 64,
          color: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(height: 16),
        Text(
          'Персонажи не найдены',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
