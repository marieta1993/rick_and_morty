// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) {
  return _CharacterModel.fromJson(json);
}

/// @nodoc
mixin _$CharacterModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  LocationModel get origin => throw _privateConstructorUsedError;
  LocationModel get location => throw _privateConstructorUsedError;

  /// Serializes this CharacterModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CharacterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterModelCopyWith<CharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterModelCopyWith<$Res> {
  factory $CharacterModelCopyWith(
    CharacterModel value,
    $Res Function(CharacterModel) then,
  ) = _$CharacterModelCopyWithImpl<$Res, CharacterModel>;
  @useResult
  $Res call({
    int id,
    String name,
    String status,
    String species,
    String gender,
    String image,
    LocationModel origin,
    LocationModel location,
  });

  $LocationModelCopyWith<$Res> get origin;
  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class _$CharacterModelCopyWithImpl<$Res, $Val extends CharacterModel>
    implements $CharacterModelCopyWith<$Res> {
  _$CharacterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? gender = null,
    Object? image = null,
    Object? origin = null,
    Object? location = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            species: null == species
                ? _value.species
                : species // ignore: cast_nullable_to_non_nullable
                      as String,
            gender: null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                      as String,
            image: null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                      as String,
            origin: null == origin
                ? _value.origin
                : origin // ignore: cast_nullable_to_non_nullable
                      as LocationModel,
            location: null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as LocationModel,
          )
          as $Val,
    );
  }

  /// Create a copy of CharacterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res> get origin {
    return $LocationModelCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }

  /// Create a copy of CharacterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res> get location {
    return $LocationModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterModelImplCopyWith<$Res>
    implements $CharacterModelCopyWith<$Res> {
  factory _$$CharacterModelImplCopyWith(
    _$CharacterModelImpl value,
    $Res Function(_$CharacterModelImpl) then,
  ) = __$$CharacterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String status,
    String species,
    String gender,
    String image,
    LocationModel origin,
    LocationModel location,
  });

  @override
  $LocationModelCopyWith<$Res> get origin;
  @override
  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class __$$CharacterModelImplCopyWithImpl<$Res>
    extends _$CharacterModelCopyWithImpl<$Res, _$CharacterModelImpl>
    implements _$$CharacterModelImplCopyWith<$Res> {
  __$$CharacterModelImplCopyWithImpl(
    _$CharacterModelImpl _value,
    $Res Function(_$CharacterModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CharacterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? gender = null,
    Object? image = null,
    Object? origin = null,
    Object? location = null,
  }) {
    return _then(
      _$CharacterModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        species: null == species
            ? _value.species
            : species // ignore: cast_nullable_to_non_nullable
                  as String,
        gender: null == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as String,
        image: null == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                  as String,
        origin: null == origin
            ? _value.origin
            : origin // ignore: cast_nullable_to_non_nullable
                  as LocationModel,
        location: null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as LocationModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterModelImpl implements _CharacterModel {
  const _$CharacterModelImpl({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.gender,
    required this.image,
    required this.origin,
    required this.location,
  });

  factory _$CharacterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String status;
  @override
  final String species;
  @override
  final String gender;
  @override
  final String image;
  @override
  final LocationModel origin;
  @override
  final LocationModel location;

  @override
  String toString() {
    return 'CharacterModel(id: $id, name: $name, status: $status, species: $species, gender: $gender, image: $image, origin: $origin, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    status,
    species,
    gender,
    image,
    origin,
    location,
  );

  /// Create a copy of CharacterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterModelImplCopyWith<_$CharacterModelImpl> get copyWith =>
      __$$CharacterModelImplCopyWithImpl<_$CharacterModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterModelImplToJson(this);
  }
}

abstract class _CharacterModel implements CharacterModel {
  const factory _CharacterModel({
    required final int id,
    required final String name,
    required final String status,
    required final String species,
    required final String gender,
    required final String image,
    required final LocationModel origin,
    required final LocationModel location,
  }) = _$CharacterModelImpl;

  factory _CharacterModel.fromJson(Map<String, dynamic> json) =
      _$CharacterModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get status;
  @override
  String get species;
  @override
  String get gender;
  @override
  String get image;
  @override
  LocationModel get origin;
  @override
  LocationModel get location;

  /// Create a copy of CharacterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterModelImplCopyWith<_$CharacterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
mixin _$LocationModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this LocationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
    LocationModel value,
    $Res Function(LocationModel) then,
  ) = _$LocationModelCopyWithImpl<$Res, LocationModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res, $Val extends LocationModel>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            url: null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocationModelImplCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$$LocationModelImplCopyWith(
    _$LocationModelImpl value,
    $Res Function(_$LocationModelImpl) then,
  ) = __$$LocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$LocationModelImplCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res, _$LocationModelImpl>
    implements _$$LocationModelImplCopyWith<$Res> {
  __$$LocationModelImplCopyWithImpl(
    _$LocationModelImpl _value,
    $Res Function(_$LocationModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null}) {
    return _then(
      _$LocationModelImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationModelImpl implements _LocationModel {
  const _$LocationModelImpl({required this.name, required this.url});

  factory _$LocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationModelImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'LocationModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      __$$LocationModelImplCopyWithImpl<_$LocationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationModelImplToJson(this);
  }
}

abstract class _LocationModel implements LocationModel {
  const factory _LocationModel({
    required final String name,
    required final String url,
  }) = _$LocationModelImpl;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$LocationModelImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
