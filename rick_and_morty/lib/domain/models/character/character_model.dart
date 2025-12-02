import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entities/character.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
class CharacterModel with _$CharacterModel {
  const factory CharacterModel({
    required int id,
    required String name,
    required String status,
    required String species,
    required String gender,
    required String image,
    required LocationModel origin,
    required LocationModel location,
  }) = _CharacterModel;

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);

  factory CharacterModel.fromDomain(Character character) => CharacterModel(
        id: character.id,
        name: character.name,
        status: character.status,
        species: character.species,
        gender: character.gender,
        image: character.imageUrl,
        origin: LocationModel(name: character.origin, url: ''),
        location: LocationModel(name: character.location, url: ''),
      );
}

extension CharacterModelMapper on CharacterModel {
  Character toDomain() {
    return Character(
      id: id,
      name: name,
      status: status,
      species: species,
      gender: gender,
      imageUrl: image,
      origin: origin.name,
      location: location.name,
    );
  }
}

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    required String name,
    required String url,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
