import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entities/paginated_characters.dart';
import '../character/character_model.dart';

part 'paginated_characters_model.freezed.dart';
part 'paginated_characters_model.g.dart';

@freezed
class PaginatedCharactersModel with _$PaginatedCharactersModel {
  const factory PaginatedCharactersModel({
    required PageInfoModel info,
    required List<CharacterModel> results,
  }) = _PaginatedCharactersModel;

  factory PaginatedCharactersModel.fromJson(Map<String, dynamic> json) =>
      _$PaginatedCharactersModelFromJson(json);
}

extension PaginatedCharactersModelMapper on PaginatedCharactersModel {
  PaginatedCharacters toDomain() {
    return PaginatedCharacters(
      characters: results.map((model) => model.toDomain()).toList(),
      currentPage: info.currentPage,
      hasMore: info.next != null && info.next!.isNotEmpty,
    );
  }
}

@freezed
class PageInfoModel with _$PageInfoModel {
  const factory PageInfoModel({
    required int count,
    required int pages,
    String? next,
    String? prev,
  }) = _PageInfoModel;

  factory PageInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PageInfoModelFromJson(json);
}

extension PageInfoModelMapper on PageInfoModel {
  int get currentPage {
    if (prev == null || prev!.isEmpty) {
      return 1;
    }
    final uri = Uri.tryParse(prev!);
    final prevPage = int.tryParse(uri?.queryParameters['page'] ?? '');
    if (prevPage == null) {
      return 1;
    }
    return prevPage + 1;
  }
}
