import 'package:freezed_annotation/freezed_annotation.dart';

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

  factory CharacterModel.fromDomain(CharacterModel character) => CharacterModel(
    id: character.id,
    name: character.name,
    status: character.status,
    species: character.species,
    gender: character.gender,
    image: character.image,
    origin: character.origin,
    location: character.location,
  );
}

extension CharacterModelMapper on CharacterModel {
  CharacterModel toDomain() {
    return CharacterModel(
      id: id,
      name: name,
      status: status,
      species: species,
      gender: gender,
      image: image,
      origin: origin,
      location: location,
    );
  }
}

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({required String name, required String url}) =
      _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
