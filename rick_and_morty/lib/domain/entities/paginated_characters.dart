import 'package:freezed_annotation/freezed_annotation.dart';

import 'character.dart';

part 'paginated_characters.freezed.dart';

@freezed
class PaginatedCharacters with _$PaginatedCharacters {
  const factory PaginatedCharacters({
    required List<Character> characters,
    required int currentPage,
    required bool hasMore,
  }) = _PaginatedCharacters;
}

