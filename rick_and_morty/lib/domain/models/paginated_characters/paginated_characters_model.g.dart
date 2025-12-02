// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_characters_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedCharactersModelImpl _$$PaginatedCharactersModelImplFromJson(
  Map<String, dynamic> json,
) => _$PaginatedCharactersModelImpl(
  info: PageInfoModel.fromJson(json['info'] as Map<String, dynamic>),
  results: (json['results'] as List<dynamic>)
      .map((e) => CharacterModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$PaginatedCharactersModelImplToJson(
  _$PaginatedCharactersModelImpl instance,
) => <String, dynamic>{'info': instance.info, 'results': instance.results};

_$PageInfoModelImpl _$$PageInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$PageInfoModelImpl(
      count: (json['count'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      next: json['next'] as String?,
      prev: json['prev'] as String?,
    );

Map<String, dynamic> _$$PageInfoModelImplToJson(_$PageInfoModelImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
      'prev': instance.prev,
    };
