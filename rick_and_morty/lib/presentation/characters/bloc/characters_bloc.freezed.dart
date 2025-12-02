// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CharactersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int pageKey) pageRequested,
    required TResult Function() refresh,
    required TResult Function(Character character) toggleFavorite,
    required TResult Function() favoritesRefreshed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int pageKey)? pageRequested,
    TResult? Function()? refresh,
    TResult? Function(Character character)? toggleFavorite,
    TResult? Function()? favoritesRefreshed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int pageKey)? pageRequested,
    TResult Function()? refresh,
    TResult Function(Character character)? toggleFavorite,
    TResult Function()? favoritesRefreshed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_FavoritesRefreshed value) favoritesRefreshed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_FavoritesRefreshed value)? favoritesRefreshed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_FavoritesRefreshed value)? favoritesRefreshed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersEventCopyWith<$Res> {
  factory $CharactersEventCopyWith(
    CharactersEvent value,
    $Res Function(CharactersEvent) then,
  ) = _$CharactersEventCopyWithImpl<$Res, CharactersEvent>;
}

/// @nodoc
class _$CharactersEventCopyWithImpl<$Res, $Val extends CharactersEvent>
    implements $CharactersEventCopyWith<$Res> {
  _$CharactersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharactersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
    _$StartedImpl value,
    $Res Function(_$StartedImpl) then,
  ) = __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CharactersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CharactersEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int pageKey) pageRequested,
    required TResult Function() refresh,
    required TResult Function(Character character) toggleFavorite,
    required TResult Function() favoritesRefreshed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int pageKey)? pageRequested,
    TResult? Function()? refresh,
    TResult? Function(Character character)? toggleFavorite,
    TResult? Function()? favoritesRefreshed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int pageKey)? pageRequested,
    TResult Function()? refresh,
    TResult Function(Character character)? toggleFavorite,
    TResult Function()? favoritesRefreshed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_FavoritesRefreshed value) favoritesRefreshed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_FavoritesRefreshed value)? favoritesRefreshed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_FavoritesRefreshed value)? favoritesRefreshed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CharactersEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$PageRequestedImplCopyWith<$Res> {
  factory _$$PageRequestedImplCopyWith(
    _$PageRequestedImpl value,
    $Res Function(_$PageRequestedImpl) then,
  ) = __$$PageRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int pageKey});
}

/// @nodoc
class __$$PageRequestedImplCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res, _$PageRequestedImpl>
    implements _$$PageRequestedImplCopyWith<$Res> {
  __$$PageRequestedImplCopyWithImpl(
    _$PageRequestedImpl _value,
    $Res Function(_$PageRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pageKey = null}) {
    return _then(
      _$PageRequestedImpl(
        null == pageKey
            ? _value.pageKey
            : pageKey // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$PageRequestedImpl implements _PageRequested {
  const _$PageRequestedImpl(this.pageKey);

  @override
  final int pageKey;

  @override
  String toString() {
    return 'CharactersEvent.pageRequested(pageKey: $pageKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageRequestedImpl &&
            (identical(other.pageKey, pageKey) || other.pageKey == pageKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageKey);

  /// Create a copy of CharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageRequestedImplCopyWith<_$PageRequestedImpl> get copyWith =>
      __$$PageRequestedImplCopyWithImpl<_$PageRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int pageKey) pageRequested,
    required TResult Function() refresh,
    required TResult Function(Character character) toggleFavorite,
    required TResult Function() favoritesRefreshed,
  }) {
    return pageRequested(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int pageKey)? pageRequested,
    TResult? Function()? refresh,
    TResult? Function(Character character)? toggleFavorite,
    TResult? Function()? favoritesRefreshed,
  }) {
    return pageRequested?.call(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int pageKey)? pageRequested,
    TResult Function()? refresh,
    TResult Function(Character character)? toggleFavorite,
    TResult Function()? favoritesRefreshed,
    required TResult orElse(),
  }) {
    if (pageRequested != null) {
      return pageRequested(pageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_FavoritesRefreshed value) favoritesRefreshed,
  }) {
    return pageRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_FavoritesRefreshed value)? favoritesRefreshed,
  }) {
    return pageRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_FavoritesRefreshed value)? favoritesRefreshed,
    required TResult orElse(),
  }) {
    if (pageRequested != null) {
      return pageRequested(this);
    }
    return orElse();
  }
}

abstract class _PageRequested implements CharactersEvent {
  const factory _PageRequested(final int pageKey) = _$PageRequestedImpl;

  int get pageKey;

  /// Create a copy of CharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageRequestedImplCopyWith<_$PageRequestedImpl> get copyWith =>
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
    extends _$CharactersEventCopyWithImpl<$Res, _$RefreshImpl>
    implements _$$RefreshImplCopyWith<$Res> {
  __$$RefreshImplCopyWithImpl(
    _$RefreshImpl _value,
    $Res Function(_$RefreshImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CharactersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshImpl implements _Refresh {
  const _$RefreshImpl();

  @override
  String toString() {
    return 'CharactersEvent.refresh()';
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
    required TResult Function() started,
    required TResult Function(int pageKey) pageRequested,
    required TResult Function() refresh,
    required TResult Function(Character character) toggleFavorite,
    required TResult Function() favoritesRefreshed,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int pageKey)? pageRequested,
    TResult? Function()? refresh,
    TResult? Function(Character character)? toggleFavorite,
    TResult? Function()? favoritesRefreshed,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int pageKey)? pageRequested,
    TResult Function()? refresh,
    TResult Function(Character character)? toggleFavorite,
    TResult Function()? favoritesRefreshed,
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
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_FavoritesRefreshed value) favoritesRefreshed,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_FavoritesRefreshed value)? favoritesRefreshed,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_FavoritesRefreshed value)? favoritesRefreshed,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements CharactersEvent {
  const factory _Refresh() = _$RefreshImpl;
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
    extends _$CharactersEventCopyWithImpl<$Res, _$ToggleFavoriteImpl>
    implements _$$ToggleFavoriteImplCopyWith<$Res> {
  __$$ToggleFavoriteImplCopyWithImpl(
    _$ToggleFavoriteImpl _value,
    $Res Function(_$ToggleFavoriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CharactersEvent
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

  /// Create a copy of CharactersEvent
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
    return 'CharactersEvent.toggleFavorite(character: $character)';
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

  /// Create a copy of CharactersEvent
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
    required TResult Function() started,
    required TResult Function(int pageKey) pageRequested,
    required TResult Function() refresh,
    required TResult Function(Character character) toggleFavorite,
    required TResult Function() favoritesRefreshed,
  }) {
    return toggleFavorite(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int pageKey)? pageRequested,
    TResult? Function()? refresh,
    TResult? Function(Character character)? toggleFavorite,
    TResult? Function()? favoritesRefreshed,
  }) {
    return toggleFavorite?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int pageKey)? pageRequested,
    TResult Function()? refresh,
    TResult Function(Character character)? toggleFavorite,
    TResult Function()? favoritesRefreshed,
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
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_FavoritesRefreshed value) favoritesRefreshed,
  }) {
    return toggleFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_FavoritesRefreshed value)? favoritesRefreshed,
  }) {
    return toggleFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_FavoritesRefreshed value)? favoritesRefreshed,
    required TResult orElse(),
  }) {
    if (toggleFavorite != null) {
      return toggleFavorite(this);
    }
    return orElse();
  }
}

abstract class _ToggleFavorite implements CharactersEvent {
  const factory _ToggleFavorite(final Character character) =
      _$ToggleFavoriteImpl;

  Character get character;

  /// Create a copy of CharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleFavoriteImplCopyWith<_$ToggleFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoritesRefreshedImplCopyWith<$Res> {
  factory _$$FavoritesRefreshedImplCopyWith(
    _$FavoritesRefreshedImpl value,
    $Res Function(_$FavoritesRefreshedImpl) then,
  ) = __$$FavoritesRefreshedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoritesRefreshedImplCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res, _$FavoritesRefreshedImpl>
    implements _$$FavoritesRefreshedImplCopyWith<$Res> {
  __$$FavoritesRefreshedImplCopyWithImpl(
    _$FavoritesRefreshedImpl _value,
    $Res Function(_$FavoritesRefreshedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CharactersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FavoritesRefreshedImpl implements _FavoritesRefreshed {
  const _$FavoritesRefreshedImpl();

  @override
  String toString() {
    return 'CharactersEvent.favoritesRefreshed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoritesRefreshedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int pageKey) pageRequested,
    required TResult Function() refresh,
    required TResult Function(Character character) toggleFavorite,
    required TResult Function() favoritesRefreshed,
  }) {
    return favoritesRefreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int pageKey)? pageRequested,
    TResult? Function()? refresh,
    TResult? Function(Character character)? toggleFavorite,
    TResult? Function()? favoritesRefreshed,
  }) {
    return favoritesRefreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int pageKey)? pageRequested,
    TResult Function()? refresh,
    TResult Function(Character character)? toggleFavorite,
    TResult Function()? favoritesRefreshed,
    required TResult orElse(),
  }) {
    if (favoritesRefreshed != null) {
      return favoritesRefreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
    required TResult Function(_FavoritesRefreshed value) favoritesRefreshed,
  }) {
    return favoritesRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
    TResult? Function(_FavoritesRefreshed value)? favoritesRefreshed,
  }) {
    return favoritesRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    TResult Function(_FavoritesRefreshed value)? favoritesRefreshed,
    required TResult orElse(),
  }) {
    if (favoritesRefreshed != null) {
      return favoritesRefreshed(this);
    }
    return orElse();
  }
}

abstract class _FavoritesRefreshed implements CharactersEvent {
  const factory _FavoritesRefreshed() = _$FavoritesRefreshedImpl;
}

/// @nodoc
mixin _$CharactersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      int page,
      List<Character> characters,
      List<Character> pageItems,
      bool hasMore,
      Set<int> favoriteIds,
      AppError? error,
    )
    loaded,
    required TResult Function(
      AppError error,
      int page,
      List<Character> characters,
      bool hasMore,
      Set<int> favoriteIds,
    )
    error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      int page,
      List<Character> characters,
      List<Character> pageItems,
      bool hasMore,
      Set<int> favoriteIds,
      AppError? error,
    )?
    loaded,
    TResult? Function(
      AppError error,
      int page,
      List<Character> characters,
      bool hasMore,
      Set<int> favoriteIds,
    )?
    error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      int page,
      List<Character> characters,
      List<Character> pageItems,
      bool hasMore,
      Set<int> favoriteIds,
      AppError? error,
    )?
    loaded,
    TResult Function(
      AppError error,
      int page,
      List<Character> characters,
      bool hasMore,
      Set<int> favoriteIds,
    )?
    error,
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
abstract class $CharactersStateCopyWith<$Res> {
  factory $CharactersStateCopyWith(
    CharactersState value,
    $Res Function(CharactersState) then,
  ) = _$CharactersStateCopyWithImpl<$Res, CharactersState>;
}

/// @nodoc
class _$CharactersStateCopyWithImpl<$Res, $Val extends CharactersState>
    implements $CharactersStateCopyWith<$Res> {
  _$CharactersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharactersState
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
    extends _$CharactersStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CharactersState.initial()';
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
      int page,
      List<Character> characters,
      List<Character> pageItems,
      bool hasMore,
      Set<int> favoriteIds,
      AppError? error,
    )
    loaded,
    required TResult Function(
      AppError error,
      int page,
      List<Character> characters,
      bool hasMore,
      Set<int> favoriteIds,
    )
    error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      int page,
      List<Character> characters,
      List<Character> pageItems,
      bool hasMore,
      Set<int> favoriteIds,
      AppError? error,
    )?
    loaded,
    TResult? Function(
      AppError error,
      int page,
      List<Character> characters,
      bool hasMore,
      Set<int> favoriteIds,
    )?
    error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      int page,
      List<Character> characters,
      List<Character> pageItems,
      bool hasMore,
      Set<int> favoriteIds,
      AppError? error,
    )?
    loaded,
    TResult Function(
      AppError error,
      int page,
      List<Character> characters,
      bool hasMore,
      Set<int> favoriteIds,
    )?
    error,
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

abstract class _Initial implements CharactersState {
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
    extends _$CharactersStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CharactersState.loading()';
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
      int page,
      List<Character> characters,
      List<Character> pageItems,
      bool hasMore,
      Set<int> favoriteIds,
      AppError? error,
    )
    loaded,
    required TResult Function(
      AppError error,
      int page,
      List<Character> characters,
      bool hasMore,
      Set<int> favoriteIds,
    )
    error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      int page,
      List<Character> characters,
      List<Character> pageItems,
      bool hasMore,
      Set<int> favoriteIds,
      AppError? error,
    )?
    loaded,
    TResult? Function(
      AppError error,
      int page,
      List<Character> characters,
      bool hasMore,
      Set<int> favoriteIds,
    )?
    error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      int page,
      List<Character> characters,
      List<Character> pageItems,
      bool hasMore,
      Set<int> favoriteIds,
      AppError? error,
    )?
    loaded,
    TResult Function(
      AppError error,
      int page,
      List<Character> characters,
      bool hasMore,
      Set<int> favoriteIds,
    )?
    error,
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

abstract class _Loading implements CharactersState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
    _$LoadedImpl value,
    $Res Function(_$LoadedImpl) then,
  ) = __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    int page,
    List<Character> characters,
    List<Character> pageItems,
    bool hasMore,
    Set<int> favoriteIds,
    AppError? error,
  });
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
    _$LoadedImpl _value,
    $Res Function(_$LoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? characters = null,
    Object? pageItems = null,
    Object? hasMore = null,
    Object? favoriteIds = null,
    Object? error = freezed,
  }) {
    return _then(
      _$LoadedImpl(
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        characters: null == characters
            ? _value._characters
            : characters // ignore: cast_nullable_to_non_nullable
                  as List<Character>,
        pageItems: null == pageItems
            ? _value._pageItems
            : pageItems // ignore: cast_nullable_to_non_nullable
                  as List<Character>,
        hasMore: null == hasMore
            ? _value.hasMore
            : hasMore // ignore: cast_nullable_to_non_nullable
                  as bool,
        favoriteIds: null == favoriteIds
            ? _value._favoriteIds
            : favoriteIds // ignore: cast_nullable_to_non_nullable
                  as Set<int>,
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
    required this.page,
    required final List<Character> characters,
    required final List<Character> pageItems,
    required this.hasMore,
    required final Set<int> favoriteIds,
    this.error,
  }) : _characters = characters,
       _pageItems = pageItems,
       _favoriteIds = favoriteIds;

  @override
  final int page;
  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  final List<Character> _pageItems;
  @override
  List<Character> get pageItems {
    if (_pageItems is EqualUnmodifiableListView) return _pageItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pageItems);
  }

  @override
  final bool hasMore;
  final Set<int> _favoriteIds;
  @override
  Set<int> get favoriteIds {
    if (_favoriteIds is EqualUnmodifiableSetView) return _favoriteIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_favoriteIds);
  }

  @override
  final AppError? error;

  @override
  String toString() {
    return 'CharactersState.loaded(page: $page, characters: $characters, pageItems: $pageItems, hasMore: $hasMore, favoriteIds: $favoriteIds, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(
              other._characters,
              _characters,
            ) &&
            const DeepCollectionEquality().equals(
              other._pageItems,
              _pageItems,
            ) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            const DeepCollectionEquality().equals(
              other._favoriteIds,
              _favoriteIds,
            ) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    page,
    const DeepCollectionEquality().hash(_characters),
    const DeepCollectionEquality().hash(_pageItems),
    hasMore,
    const DeepCollectionEquality().hash(_favoriteIds),
    error,
  );

  /// Create a copy of CharactersState
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
      int page,
      List<Character> characters,
      List<Character> pageItems,
      bool hasMore,
      Set<int> favoriteIds,
      AppError? error,
    )
    loaded,
    required TResult Function(
      AppError error,
      int page,
      List<Character> characters,
      bool hasMore,
      Set<int> favoriteIds,
    )
    error,
  }) {
    return loaded(
      page,
      characters,
      pageItems,
      hasMore,
      favoriteIds,
      this.error,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      int page,
      List<Character> characters,
      List<Character> pageItems,
      bool hasMore,
      Set<int> favoriteIds,
      AppError? error,
    )?
    loaded,
    TResult? Function(
      AppError error,
      int page,
      List<Character> characters,
      bool hasMore,
      Set<int> favoriteIds,
    )?
    error,
  }) {
    return loaded?.call(
      page,
      characters,
      pageItems,
      hasMore,
      favoriteIds,
      this.error,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      int page,
      List<Character> characters,
      List<Character> pageItems,
      bool hasMore,
      Set<int> favoriteIds,
      AppError? error,
    )?
    loaded,
    TResult Function(
      AppError error,
      int page,
      List<Character> characters,
      bool hasMore,
      Set<int> favoriteIds,
    )?
    error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
        page,
        characters,
        pageItems,
        hasMore,
        favoriteIds,
        this.error,
      );
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

abstract class _Loaded implements CharactersState {
  const factory _Loaded({
    required final int page,
    required final List<Character> characters,
    required final List<Character> pageItems,
    required final bool hasMore,
    required final Set<int> favoriteIds,
    final AppError? error,
  }) = _$LoadedImpl;

  int get page;
  List<Character> get characters;
  List<Character> get pageItems;
  bool get hasMore;
  Set<int> get favoriteIds;
  AppError? get error;

  /// Create a copy of CharactersState
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
  $Res call({
    AppError error,
    int page,
    List<Character> characters,
    bool hasMore,
    Set<int> favoriteIds,
  });
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? page = null,
    Object? characters = null,
    Object? hasMore = null,
    Object? favoriteIds = null,
  }) {
    return _then(
      _$ErrorImpl(
        error: null == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as AppError,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        characters: null == characters
            ? _value._characters
            : characters // ignore: cast_nullable_to_non_nullable
                  as List<Character>,
        hasMore: null == hasMore
            ? _value.hasMore
            : hasMore // ignore: cast_nullable_to_non_nullable
                  as bool,
        favoriteIds: null == favoriteIds
            ? _value._favoriteIds
            : favoriteIds // ignore: cast_nullable_to_non_nullable
                  as Set<int>,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({
    required this.error,
    required this.page,
    required final List<Character> characters,
    required this.hasMore,
    required final Set<int> favoriteIds,
  }) : _characters = characters,
       _favoriteIds = favoriteIds;

  @override
  final AppError error;
  @override
  final int page;
  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  final bool hasMore;
  final Set<int> _favoriteIds;
  @override
  Set<int> get favoriteIds {
    if (_favoriteIds is EqualUnmodifiableSetView) return _favoriteIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_favoriteIds);
  }

  @override
  String toString() {
    return 'CharactersState.error(error: $error, page: $page, characters: $characters, hasMore: $hasMore, favoriteIds: $favoriteIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(
              other._characters,
              _characters,
            ) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            const DeepCollectionEquality().equals(
              other._favoriteIds,
              _favoriteIds,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    error,
    page,
    const DeepCollectionEquality().hash(_characters),
    hasMore,
    const DeepCollectionEquality().hash(_favoriteIds),
  );

  /// Create a copy of CharactersState
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
      int page,
      List<Character> characters,
      List<Character> pageItems,
      bool hasMore,
      Set<int> favoriteIds,
      AppError? error,
    )
    loaded,
    required TResult Function(
      AppError error,
      int page,
      List<Character> characters,
      bool hasMore,
      Set<int> favoriteIds,
    )
    error,
  }) {
    return error(this.error, page, characters, hasMore, favoriteIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      int page,
      List<Character> characters,
      List<Character> pageItems,
      bool hasMore,
      Set<int> favoriteIds,
      AppError? error,
    )?
    loaded,
    TResult? Function(
      AppError error,
      int page,
      List<Character> characters,
      bool hasMore,
      Set<int> favoriteIds,
    )?
    error,
  }) {
    return error?.call(this.error, page, characters, hasMore, favoriteIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      int page,
      List<Character> characters,
      List<Character> pageItems,
      bool hasMore,
      Set<int> favoriteIds,
      AppError? error,
    )?
    loaded,
    TResult Function(
      AppError error,
      int page,
      List<Character> characters,
      bool hasMore,
      Set<int> favoriteIds,
    )?
    error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, page, characters, hasMore, favoriteIds);
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

abstract class _Error implements CharactersState {
  const factory _Error({
    required final AppError error,
    required final int page,
    required final List<Character> characters,
    required final bool hasMore,
    required final Set<int> favoriteIds,
  }) = _$ErrorImpl;

  AppError get error;
  int get page;
  List<Character> get characters;
  bool get hasMore;
  Set<int> get favoriteIds;

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
