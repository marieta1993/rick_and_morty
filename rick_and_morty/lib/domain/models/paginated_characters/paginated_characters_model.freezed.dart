// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_characters_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaginatedCharactersModel _$PaginatedCharactersModelFromJson(
  Map<String, dynamic> json,
) {
  return _PaginatedCharactersModel.fromJson(json);
}

/// @nodoc
mixin _$PaginatedCharactersModel {
  PageInfoModel get info => throw _privateConstructorUsedError;
  List<CharacterModel> get results => throw _privateConstructorUsedError;

  /// Serializes this PaginatedCharactersModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginatedCharactersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginatedCharactersModelCopyWith<PaginatedCharactersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedCharactersModelCopyWith<$Res> {
  factory $PaginatedCharactersModelCopyWith(
    PaginatedCharactersModel value,
    $Res Function(PaginatedCharactersModel) then,
  ) = _$PaginatedCharactersModelCopyWithImpl<$Res, PaginatedCharactersModel>;
  @useResult
  $Res call({PageInfoModel info, List<CharacterModel> results});

  $PageInfoModelCopyWith<$Res> get info;
}

/// @nodoc
class _$PaginatedCharactersModelCopyWithImpl<
  $Res,
  $Val extends PaginatedCharactersModel
>
    implements $PaginatedCharactersModelCopyWith<$Res> {
  _$PaginatedCharactersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginatedCharactersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? info = null, Object? results = null}) {
    return _then(
      _value.copyWith(
            info: null == info
                ? _value.info
                : info // ignore: cast_nullable_to_non_nullable
                      as PageInfoModel,
            results: null == results
                ? _value.results
                : results // ignore: cast_nullable_to_non_nullable
                      as List<CharacterModel>,
          )
          as $Val,
    );
  }

  /// Create a copy of PaginatedCharactersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageInfoModelCopyWith<$Res> get info {
    return $PageInfoModelCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginatedCharactersModelImplCopyWith<$Res>
    implements $PaginatedCharactersModelCopyWith<$Res> {
  factory _$$PaginatedCharactersModelImplCopyWith(
    _$PaginatedCharactersModelImpl value,
    $Res Function(_$PaginatedCharactersModelImpl) then,
  ) = __$$PaginatedCharactersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageInfoModel info, List<CharacterModel> results});

  @override
  $PageInfoModelCopyWith<$Res> get info;
}

/// @nodoc
class __$$PaginatedCharactersModelImplCopyWithImpl<$Res>
    extends
        _$PaginatedCharactersModelCopyWithImpl<
          $Res,
          _$PaginatedCharactersModelImpl
        >
    implements _$$PaginatedCharactersModelImplCopyWith<$Res> {
  __$$PaginatedCharactersModelImplCopyWithImpl(
    _$PaginatedCharactersModelImpl _value,
    $Res Function(_$PaginatedCharactersModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaginatedCharactersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? info = null, Object? results = null}) {
    return _then(
      _$PaginatedCharactersModelImpl(
        info: null == info
            ? _value.info
            : info // ignore: cast_nullable_to_non_nullable
                  as PageInfoModel,
        results: null == results
            ? _value._results
            : results // ignore: cast_nullable_to_non_nullable
                  as List<CharacterModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedCharactersModelImpl implements _PaginatedCharactersModel {
  const _$PaginatedCharactersModelImpl({
    required this.info,
    required final List<CharacterModel> results,
  }) : _results = results;

  factory _$PaginatedCharactersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedCharactersModelImplFromJson(json);

  @override
  final PageInfoModel info;
  final List<CharacterModel> _results;
  @override
  List<CharacterModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PaginatedCharactersModel(info: $info, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedCharactersModelImpl &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    info,
    const DeepCollectionEquality().hash(_results),
  );

  /// Create a copy of PaginatedCharactersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedCharactersModelImplCopyWith<_$PaginatedCharactersModelImpl>
  get copyWith =>
      __$$PaginatedCharactersModelImplCopyWithImpl<
        _$PaginatedCharactersModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedCharactersModelImplToJson(this);
  }
}

abstract class _PaginatedCharactersModel implements PaginatedCharactersModel {
  const factory _PaginatedCharactersModel({
    required final PageInfoModel info,
    required final List<CharacterModel> results,
  }) = _$PaginatedCharactersModelImpl;

  factory _PaginatedCharactersModel.fromJson(Map<String, dynamic> json) =
      _$PaginatedCharactersModelImpl.fromJson;

  @override
  PageInfoModel get info;
  @override
  List<CharacterModel> get results;

  /// Create a copy of PaginatedCharactersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginatedCharactersModelImplCopyWith<_$PaginatedCharactersModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

PageInfoModel _$PageInfoModelFromJson(Map<String, dynamic> json) {
  return _PageInfoModel.fromJson(json);
}

/// @nodoc
mixin _$PageInfoModel {
  int get count => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get prev => throw _privateConstructorUsedError;

  /// Serializes this PageInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PageInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageInfoModelCopyWith<PageInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageInfoModelCopyWith<$Res> {
  factory $PageInfoModelCopyWith(
    PageInfoModel value,
    $Res Function(PageInfoModel) then,
  ) = _$PageInfoModelCopyWithImpl<$Res, PageInfoModel>;
  @useResult
  $Res call({int count, int pages, String? next, String? prev});
}

/// @nodoc
class _$PageInfoModelCopyWithImpl<$Res, $Val extends PageInfoModel>
    implements $PageInfoModelCopyWith<$Res> {
  _$PageInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PageInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
    Object? next = freezed,
    Object? prev = freezed,
  }) {
    return _then(
      _value.copyWith(
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
            pages: null == pages
                ? _value.pages
                : pages // ignore: cast_nullable_to_non_nullable
                      as int,
            next: freezed == next
                ? _value.next
                : next // ignore: cast_nullable_to_non_nullable
                      as String?,
            prev: freezed == prev
                ? _value.prev
                : prev // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PageInfoModelImplCopyWith<$Res>
    implements $PageInfoModelCopyWith<$Res> {
  factory _$$PageInfoModelImplCopyWith(
    _$PageInfoModelImpl value,
    $Res Function(_$PageInfoModelImpl) then,
  ) = __$$PageInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int pages, String? next, String? prev});
}

/// @nodoc
class __$$PageInfoModelImplCopyWithImpl<$Res>
    extends _$PageInfoModelCopyWithImpl<$Res, _$PageInfoModelImpl>
    implements _$$PageInfoModelImplCopyWith<$Res> {
  __$$PageInfoModelImplCopyWithImpl(
    _$PageInfoModelImpl _value,
    $Res Function(_$PageInfoModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PageInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
    Object? next = freezed,
    Object? prev = freezed,
  }) {
    return _then(
      _$PageInfoModelImpl(
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
        pages: null == pages
            ? _value.pages
            : pages // ignore: cast_nullable_to_non_nullable
                  as int,
        next: freezed == next
            ? _value.next
            : next // ignore: cast_nullable_to_non_nullable
                  as String?,
        prev: freezed == prev
            ? _value.prev
            : prev // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PageInfoModelImpl implements _PageInfoModel {
  const _$PageInfoModelImpl({
    required this.count,
    required this.pages,
    this.next,
    this.prev,
  });

  factory _$PageInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageInfoModelImplFromJson(json);

  @override
  final int count;
  @override
  final int pages;
  @override
  final String? next;
  @override
  final String? prev;

  @override
  String toString() {
    return 'PageInfoModel(count: $count, pages: $pages, next: $next, prev: $prev)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageInfoModelImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.prev, prev) || other.prev == prev));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, pages, next, prev);

  /// Create a copy of PageInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageInfoModelImplCopyWith<_$PageInfoModelImpl> get copyWith =>
      __$$PageInfoModelImplCopyWithImpl<_$PageInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageInfoModelImplToJson(this);
  }
}

abstract class _PageInfoModel implements PageInfoModel {
  const factory _PageInfoModel({
    required final int count,
    required final int pages,
    final String? next,
    final String? prev,
  }) = _$PageInfoModelImpl;

  factory _PageInfoModel.fromJson(Map<String, dynamic> json) =
      _$PageInfoModelImpl.fromJson;

  @override
  int get count;
  @override
  int get pages;
  @override
  String? get next;
  @override
  String? get prev;

  /// Create a copy of PageInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageInfoModelImplCopyWith<_$PageInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
