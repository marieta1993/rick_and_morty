// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterModelImpl _$$CharacterModelImplFromJson(Map<String, dynamic> json) =>
    _$CharacterModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      gender: json['gender'] as String,
      image: json['image'] as String,
      origin: LocationModel.fromJson(json['origin'] as Map<String, dynamic>),
      location: LocationModel.fromJson(
        json['location'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$CharacterModelImplToJson(
  _$CharacterModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'status': instance.status,
  'species': instance.species,
  'gender': instance.gender,
  'image': instance.image,
  'origin': instance.origin,
  'location': instance.location,
};

_$LocationModelImpl _$$LocationModelImplFromJson(Map<String, dynamic> json) =>
    _$LocationModelImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$LocationModelImplToJson(_$LocationModelImpl instance) =>
    <String, dynamic>{'name': instance.name, 'url': instance.url};
