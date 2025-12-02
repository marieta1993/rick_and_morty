import 'package:flutter/material.dart';

import 'package:rick_and_morty/domain/entities/character.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    super.key,
    required this.character,
    required this.isFavorite,
    required this.onFavoriteTap,
  });

  final Character character;
  final bool isFavorite;
  final VoidCallback onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              _CharacterImage(imageUrl: character.imageUrl),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            character.name,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        FavoriteIconButton(
                          isFavorite: isFavorite,
                          onPressed: onFavoriteTap,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    _InfoRow(label: 'Статус', value: character.status),
                    const SizedBox(height: 4),
                    _InfoRow(label: 'Вид', value: character.species),
                    const SizedBox(height: 4),
                    _InfoRow(label: 'Пол', value: character.gender),
                    const SizedBox(height: 4),
                    _InfoRow(label: 'Локация', value: character.location),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CharacterImage extends StatelessWidget {
  const _CharacterImage({required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        width: 96,
        height: 96,
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, progress) {
            if (progress == null) {
              return child;
            }
            return Container(
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
              alignment: Alignment.center,
              child: CircularProgressIndicator(
                value: progress.expectedTotalBytes != null
                    ? progress.cumulativeBytesLoaded /
                          progress.expectedTotalBytes!
                    : null,
              ),
            );
          },
          errorBuilder: (_, __, ___) => Container(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            alignment: Alignment.center,
            child: Icon(
              Icons.broken_image_outlined,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.bodyMedium,
        children: [
          TextSpan(
            text: '$label: ',
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          TextSpan(text: value),
        ],
      ),
    );
  }
}

class FavoriteIconButton extends StatefulWidget {
  const FavoriteIconButton({
    super.key,
    required this.isFavorite,
    required this.onPressed,
  });

  final bool isFavorite;
  final VoidCallback onPressed;

  @override
  State<FavoriteIconButton> createState() => _FavoriteIconButtonState();
}

class _FavoriteIconButtonState extends State<FavoriteIconButton>
    with SingleTickerProviderStateMixin {
  late bool _isFavorite;
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _isFavorite = widget.isFavorite;
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    _scaleAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    );
    if (_isFavorite) {
      _controller.value = 1;
    }
  }

  @override
  void didUpdateWidget(covariant FavoriteIconButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isFavorite != _isFavorite) {
      _isFavorite = widget.isFavorite;
      if (_isFavorite) {
        _controller
          ..reset()
          ..forward();
      } else {
        _controller.reverse();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: () {
        widget.onPressed();
      },
      child: ScaleTransition(
        scale: Tween<double>(begin: 0.85, end: 1.1).animate(_scaleAnimation),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          transitionBuilder: (child, animation) {
            return ScaleTransition(scale: animation, child: child);
          },
          child: Icon(
            widget.isFavorite ? Icons.star : Icons.star_border,
            key: ValueKey<bool>(widget.isFavorite),
            color: widget.isFavorite
                ? colorScheme.secondary
                : colorScheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}
