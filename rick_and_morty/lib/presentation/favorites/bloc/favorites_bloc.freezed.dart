// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FavoritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FavoriteSort? sort) started,
    required TResult Function(FavoriteSort sort) sortChanged,
    required TResult Function(Character character) toggleFavorite,
    required TResult Function(int id) removeFavorite,
    required TResult Function() refresh,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FavoriteSort? sort)? started,
    TResult? Function(FavoriteSort sort)? sortChanged,
    TResult? Function(Character character)? toggleFavorite,
    TResult? Function(int id)? removeFavorite,
    TResult? Function()? refresh,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FavoriteSort? sort)? started,
    TResult Function(FavoriteSort sort)? sortChanged,
    TResult Function(Character character)? toggleFavorite,
    TResult Function(int id)? removeFavorite,
    TResult Function()? refresh,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SortChanged value) sortChanged,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
    required TResult Function(_Refresh value) refresh,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SortChanged value)? sortChanged,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
    TResult? Function(_Refresh value)? refresh,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesEventCopyWith<$Res> {
  factory $FavoritesEventCopyWith(
    FavoritesEvent value,
    $Res Function(FavoritesEvent) then,
  ) = _$FavoritesEventCopyWithImpl<$Res, FavoritesEvent>;
}

/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res, $Val extends FavoritesEvent>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
    _$StartedImpl value,
    $Res Function(_$StartedImpl) then,
  ) = __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FavoriteSort? sort});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sort = freezed}) {
    return _then(
      _$StartedImpl(
        sort: freezed == sort
            ? _value.sort
            : sort // ignore: cast_nullable_to_non_nullable
                  as FavoriteSort?,
      ),
    );
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({this.sort});

  @override
  final FavoriteSort? sort;

  @override
  String toString() {
    return 'FavoritesEvent.started(sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sort);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FavoriteSort? sort) started,
    required TResult Function(FavoriteSort sort) sortChanged,
    required TResult Function(Character character) toggleFavorite,
    required TResult Function(int id) removeFavorite,
    required TResult Function() refresh,
  }) {
    return started(sort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FavoriteSort? sort)? started,
    TResult? Function(FavoriteSort sort)? sortChanged,
    TResult? Function(Character character)? toggleFavorite,
    TResult? Function(int id)? removeFavorite,
    TResult? Function()? refresh,
  }) {
    return started?.call(sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FavoriteSort? sort)? started,
    TResult Function(FavoriteSort sort)? sortChanged,
    TResult Function(Character character)? toggleFavorite,
    TResult Function(int id)? removeFavorite,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SortChanged value) sortChanged,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
    required TResult Function(_Refresh value) refresh,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SortChanged value)? sortChanged,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FavoritesEvent {
  const factory _Started({final FavoriteSort? sort}) = _$StartedImpl;

  FavoriteSort? get sort;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortChangedImplCopyWith<$Res> {
  factory _$$SortChangedImplCopyWith(
    _$SortChangedImpl value,
    $Res Function(_$SortChangedImpl) then,
  ) = __$$SortChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FavoriteSort sort});
}

/// @nodoc
class __$$SortChangedImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$SortChangedImpl>
    implements _$$SortChangedImplCopyWith<$Res> {
  __$$SortChangedImplCopyWithImpl(
    _$SortChangedImpl _value,
    $Res Function(_$SortChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sort = null}) {
    return _then(
      _$SortChangedImpl(
        null == sort
            ? _value.sort
            : sort // ignore: cast_nullable_to_non_nullable
                  as FavoriteSort,
      ),
    );
  }
}

/// @nodoc

class _$SortChangedImpl implements _SortChanged {
  const _$SortChangedImpl(this.sort);

  @override
  final FavoriteSort sort;

  @override
  String toString() {
    return 'FavoritesEvent.sortChanged(sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortChangedImpl &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sort);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SortChangedImplCopyWith<_$SortChangedImpl> get copyWith =>
      __$$SortChangedImplCopyWithImpl<_$SortChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FavoriteSort? sort) started,
    required TResult Function(FavoriteSort sort) sortChanged,
    required TResult Function(Character character) toggleFavorite,
    required TResult Function(int id) removeFavorite,
    required TResult Function() refresh,
  }) {
    return sortChanged(sort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FavoriteSort? sort)? started,
    TResult? Function(FavoriteSort sort)? sortChanged,
    TResult? Function(Character character)? toggleFavorite,
    TResult? Function(int id)? removeFavorite,
    TResult? Function()? refresh,
  }) {
    return sortChanged?.call(sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FavoriteSort? sort)? started,
    TResult Function(FavoriteSort sort)? sortChanged,
    TResult Function(Character character)? toggleFavorite,
    TResult Function(int id)? removeFavorite,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (sortChanged != null) {
      return sortChanged(sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SortChanged value) sortChanged,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
    required TResult Function(_Refresh value) refresh,
  }) {
    return sortChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SortChanged value)? sortChanged,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return sortChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (sortChanged != null) {
      return sortChanged(this);
    }
    return orElse();
  }
}

abstract class _SortChanged implements FavoritesEvent {
  const factory _SortChanged(final FavoriteSort sort) = _$SortChangedImpl;

  FavoriteSort get sort;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SortChangedImplCopyWith<_$SortChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleFavoriteImplCopyWith<$Res> {
  factory _$$ToggleFavoriteImplCopyWith(
    _$ToggleFavoriteImpl value,
    $Res Function(_$ToggleFavoriteImpl) then,
  ) = __$$ToggleFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Character character});

  $CharacterCopyWith<$Res> get character;
}

/// @nodoc
class __$$ToggleFavoriteImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$ToggleFavoriteImpl>
    implements _$$ToggleFavoriteImplCopyWith<$Res> {
  __$$ToggleFavoriteImplCopyWithImpl(
    _$ToggleFavoriteImpl _value,
    $Res Function(_$ToggleFavoriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? character = null}) {
    return _then(
      _$ToggleFavoriteImpl(
        null == character
            ? _value.character
            : character // ignore: cast_nullable_to_non_nullable
                  as Character,
      ),
    );
  }

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res> get character {
    return $CharacterCopyWith<$Res>(_value.character, (value) {
      return _then(_value.copyWith(character: value));
    });
  }
}

/// @nodoc

class _$ToggleFavoriteImpl implements _ToggleFavorite {
  const _$ToggleFavoriteImpl(this.character);

  @override
  final Character character;

  @override
  String toString() {
    return 'FavoritesEvent.toggleFavorite(character: $character)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFavoriteImpl &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleFavoriteImplCopyWith<_$ToggleFavoriteImpl> get copyWith =>
      __$$ToggleFavoriteImplCopyWithImpl<_$ToggleFavoriteImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FavoriteSort? sort) started,
    required TResult Function(FavoriteSort sort) sortChanged,
    required TResult Function(Character character) toggleFavorite,
    required TResult Function(int id) removeFavorite,
    required TResult Function() refresh,
  }) {
    return toggleFavorite(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FavoriteSort? sort)? started,
    TResult? Function(FavoriteSort sort)? sortChanged,
    TResult? Function(Character character)? toggleFavorite,
    TResult? Function(int id)? removeFavorite,
    TResult? Function()? refresh,
  }) {
    return toggleFavorite?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FavoriteSort? sort)? started,
    TResult Function(FavoriteSort sort)? sortChanged,
    TResult Function(Character character)? toggleFavorite,
    TResult Function(int id)? removeFavorite,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (toggleFavorite != null) {
      return toggleFavorite(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SortChanged value) sortChanged,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
    required TResult Function(_Refresh value) refresh,
  }) {
    return toggleFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SortChanged value)? sortChanged,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return toggleFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (toggleFavorite != null) {
      return toggleFavorite(this);
    }
    return orElse();
  }
}

abstract class _ToggleFavorite implements FavoritesEvent {
  const factory _ToggleFavorite(final Character character) =
      _$ToggleFavoriteImpl;

  Character get character;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleFavoriteImplCopyWith<_$ToggleFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFavoriteImplCopyWith<$Res> {
  factory _$$RemoveFavoriteImplCopyWith(
    _$RemoveFavoriteImpl value,
    $Res Function(_$RemoveFavoriteImpl) then,
  ) = __$$RemoveFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$RemoveFavoriteImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$RemoveFavoriteImpl>
    implements _$$RemoveFavoriteImplCopyWith<$Res> {
  __$$RemoveFavoriteImplCopyWithImpl(
    _$RemoveFavoriteImpl _value,
    $Res Function(_$RemoveFavoriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$RemoveFavoriteImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$RemoveFavoriteImpl implements _RemoveFavorite {
  const _$RemoveFavoriteImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'FavoritesEvent.removeFavorite(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFavoriteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFavoriteImplCopyWith<_$RemoveFavoriteImpl> get copyWith =>
      __$$RemoveFavoriteImplCopyWithImpl<_$RemoveFavoriteImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FavoriteSort? sort) started,
    required TResult Function(FavoriteSort sort) sortChanged,
    required TResult Function(Character character) toggleFavorite,
    required TResult Function(int id) removeFavorite,
    required TResult Function() refresh,
  }) {
    return removeFavorite(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FavoriteSort? sort)? started,
    TResult? Function(FavoriteSort sort)? sortChanged,
    TResult? Function(Character character)? toggleFavorite,
    TResult? Function(int id)? removeFavorite,
    TResult? Function()? refresh,
  }) {
    return removeFavorite?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FavoriteSort? sort)? started,
    TResult Function(FavoriteSort sort)? sortChanged,
    TResult Function(Character character)? toggleFavorite,
    TResult Function(int id)? removeFavorite,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SortChanged value) sortChanged,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
    required TResult Function(_Refresh value) refresh,
  }) {
    return removeFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SortChanged value)? sortChanged,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return removeFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(this);
    }
    return orElse();
  }
}

abstract class _RemoveFavorite implements FavoritesEvent {
  const factory _RemoveFavorite(final int id) = _$RemoveFavoriteImpl;

  int get id;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveFavoriteImplCopyWith<_$RemoveFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshImplCopyWith<$Res> {
  factory _$$RefreshImplCopyWith(
    _$RefreshImpl value,
    $Res Function(_$RefreshImpl) then,
  ) = __$$RefreshImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$RefreshImpl>
    implements _$$RefreshImplCopyWith<$Res> {
  __$$RefreshImplCopyWithImpl(
    _$RefreshImpl _value,
    $Res Function(_$RefreshImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshImpl implements _Refresh {
  const _$RefreshImpl();

  @override
  String toString() {
    return 'FavoritesEvent.refresh()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FavoriteSort? sort) started,
    required TResult Function(FavoriteSort sort) sortChanged,
    required TResult Function(Character character) toggleFavorite,
    required TResult Function(int id) removeFavorite,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FavoriteSort? sort)? started,
    TResult? Function(FavoriteSort sort)? sortChanged,
    TResult? Function(Character character)? toggleFavorite,
    TResult? Function(int id)? removeFavorite,
    TResult? Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FavoriteSort? sort)? started,
    TResult Function(FavoriteSort sort)? sortChanged,
    TResult Function(Character character)? toggleFavorite,
    TResult Function(int id)? removeFavorite,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SortChanged value) sortChanged,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
    required TResult Function(_Refresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SortChanged value)? sortChanged,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
    TResult? Function(_Refresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SortChanged value)? sortChanged,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements FavoritesEvent {
  const factory _Refresh() = _$RefreshImpl;
}

/// @nodoc
mixin _$FavoritesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<Character> characters,
      FavoriteSort sort,
      AppError? error,
    )
    loaded,
    required TResult Function(AppError error) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<Character> characters,
      FavoriteSort sort,
      AppError? error,
    )?
    loaded,
    TResult? Function(AppError error)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<Character> characters,
      FavoriteSort sort,
      AppError? error,
    )?
    loaded,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
    FavoritesState value,
    $Res Function(FavoritesState) then,
  ) = _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FavoritesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<Character> characters,
      FavoriteSort sort,
      AppError? error,
    )
    loaded,
    required TResult Function(AppError error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<Character> characters,
      FavoriteSort sort,
      AppError? error,
    )?
    loaded,
    TResult? Function(AppError error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<Character> characters,
      FavoriteSort sort,
      AppError? error,
    )?
    loaded,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavoritesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'FavoritesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<Character> characters,
      FavoriteSort sort,
      AppError? error,
    )
    loaded,
    required TResult Function(AppError error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<Character> characters,
      FavoriteSort sort,
      AppError? error,
    )?
    loaded,
    TResult? Function(AppError error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<Character> characters,
      FavoriteSort sort,
      AppError? error,
    )?
    loaded,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FavoritesState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
    _$LoadedImpl value,
    $Res Function(_$LoadedImpl) then,
  ) = __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Character> characters, FavoriteSort sort, AppError? error});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
    _$LoadedImpl _value,
    $Res Function(_$LoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? sort = null,
    Object? error = freezed,
  }) {
    return _then(
      _$LoadedImpl(
        characters: null == characters
            ? _value._characters
            : characters // ignore: cast_nullable_to_non_nullable
                  as List<Character>,
        sort: null == sort
            ? _value.sort
            : sort // ignore: cast_nullable_to_non_nullable
                  as FavoriteSort,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as AppError?,
      ),
    );
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({
    required final List<Character> characters,
    required this.sort,
    this.error,
  }) : _characters = characters;

  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  final FavoriteSort sort;
  @override
  final AppError? error;

  @override
  String toString() {
    return 'FavoritesState.loaded(characters: $characters, sort: $sort, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(
              other._characters,
              _characters,
            ) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_characters),
    sort,
    error,
  );

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<Character> characters,
      FavoriteSort sort,
      AppError? error,
    )
    loaded,
    required TResult Function(AppError error) error,
  }) {
    return loaded(characters, sort, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<Character> characters,
      FavoriteSort sort,
      AppError? error,
    )?
    loaded,
    TResult? Function(AppError error)? error,
  }) {
    return loaded?.call(characters, sort, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<Character> characters,
      FavoriteSort sort,
      AppError? error,
    )?
    loaded,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(characters, sort, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements FavoritesState {
  const factory _Loaded({
    required final List<Character> characters,
    required final FavoriteSort sort,
    final AppError? error,
  }) = _$LoadedImpl;

  List<Character> get characters;
  FavoriteSort get sort;
  AppError? get error;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppError error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = null}) {
    return _then(
      _$ErrorImpl(
        error: null == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as AppError,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.error});

  @override
  final AppError error;

  @override
  String toString() {
    return 'FavoritesState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<Character> characters,
      FavoriteSort sort,
      AppError? error,
    )
    loaded,
    required TResult Function(AppError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<Character> characters,
      FavoriteSort sort,
      AppError? error,
    )?
    loaded,
    TResult? Function(AppError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<Character> characters,
      FavoriteSort sort,
      AppError? error,
    )?
    loaded,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements FavoritesState {
  const factory _Error({required final AppError error}) = _$ErrorImpl;

  AppError get error;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
