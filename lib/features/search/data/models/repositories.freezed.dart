// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repositories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepositoriesModel _$RepositoriesModelFromJson(Map<String, dynamic> json) {
  return _RepositoriesModel.fromJson(json);
}

/// @nodoc
mixin _$RepositoriesModel {
  String get name => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;
  int get forks_count => throw _privateConstructorUsedError;
  int get stargazers_count => throw _privateConstructorUsedError;
  int get watchers_count => throw _privateConstructorUsedError;
  Map<String, dynamic> get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoriesModelCopyWith<RepositoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoriesModelCopyWith<$Res> {
  factory $RepositoriesModelCopyWith(
          RepositoriesModel value, $Res Function(RepositoriesModel) then) =
      _$RepositoriesModelCopyWithImpl<$Res>;
  $Res call(
      {String name,
      DateTime created_at,
      int forks_count,
      int stargazers_count,
      int watchers_count,
      Map<String, dynamic> owner});
}

/// @nodoc
class _$RepositoriesModelCopyWithImpl<$Res>
    implements $RepositoriesModelCopyWith<$Res> {
  _$RepositoriesModelCopyWithImpl(this._value, this._then);

  final RepositoriesModel _value;
  // ignore: unused_field
  final $Res Function(RepositoriesModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? created_at = freezed,
    Object? forks_count = freezed,
    Object? stargazers_count = freezed,
    Object? watchers_count = freezed,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      forks_count: forks_count == freezed
          ? _value.forks_count
          : forks_count // ignore: cast_nullable_to_non_nullable
              as int,
      stargazers_count: stargazers_count == freezed
          ? _value.stargazers_count
          : stargazers_count // ignore: cast_nullable_to_non_nullable
              as int,
      watchers_count: watchers_count == freezed
          ? _value.watchers_count
          : watchers_count // ignore: cast_nullable_to_non_nullable
              as int,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$$_RepositoriesModelCopyWith<$Res>
    implements $RepositoriesModelCopyWith<$Res> {
  factory _$$_RepositoriesModelCopyWith(_$_RepositoriesModel value,
          $Res Function(_$_RepositoriesModel) then) =
      __$$_RepositoriesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      DateTime created_at,
      int forks_count,
      int stargazers_count,
      int watchers_count,
      Map<String, dynamic> owner});
}

/// @nodoc
class __$$_RepositoriesModelCopyWithImpl<$Res>
    extends _$RepositoriesModelCopyWithImpl<$Res>
    implements _$$_RepositoriesModelCopyWith<$Res> {
  __$$_RepositoriesModelCopyWithImpl(
      _$_RepositoriesModel _value, $Res Function(_$_RepositoriesModel) _then)
      : super(_value, (v) => _then(v as _$_RepositoriesModel));

  @override
  _$_RepositoriesModel get _value => super._value as _$_RepositoriesModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? created_at = freezed,
    Object? forks_count = freezed,
    Object? stargazers_count = freezed,
    Object? watchers_count = freezed,
    Object? owner = freezed,
  }) {
    return _then(_$_RepositoriesModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      forks_count: forks_count == freezed
          ? _value.forks_count
          : forks_count // ignore: cast_nullable_to_non_nullable
              as int,
      stargazers_count: stargazers_count == freezed
          ? _value.stargazers_count
          : stargazers_count // ignore: cast_nullable_to_non_nullable
              as int,
      watchers_count: watchers_count == freezed
          ? _value.watchers_count
          : watchers_count // ignore: cast_nullable_to_non_nullable
              as int,
      owner: owner == freezed
          ? _value._owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RepositoriesModel implements _RepositoriesModel {
  _$_RepositoriesModel(
      {required this.name,
      required this.created_at,
      required this.forks_count,
      required this.stargazers_count,
      required this.watchers_count,
      required final Map<String, dynamic> owner})
      : _owner = owner;

  factory _$_RepositoriesModel.fromJson(Map<String, dynamic> json) =>
      _$$_RepositoriesModelFromJson(json);

  @override
  final String name;
  @override
  final DateTime created_at;
  @override
  final int forks_count;
  @override
  final int stargazers_count;
  @override
  final int watchers_count;
  final Map<String, dynamic> _owner;
  @override
  Map<String, dynamic> get owner {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_owner);
  }

  @override
  String toString() {
    return 'RepositoriesModel(name: $name, created_at: $created_at, forks_count: $forks_count, stargazers_count: $stargazers_count, watchers_count: $watchers_count, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepositoriesModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality()
                .equals(other.forks_count, forks_count) &&
            const DeepCollectionEquality()
                .equals(other.stargazers_count, stargazers_count) &&
            const DeepCollectionEquality()
                .equals(other.watchers_count, watchers_count) &&
            const DeepCollectionEquality().equals(other._owner, _owner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(forks_count),
      const DeepCollectionEquality().hash(stargazers_count),
      const DeepCollectionEquality().hash(watchers_count),
      const DeepCollectionEquality().hash(_owner));

  @JsonKey(ignore: true)
  @override
  _$$_RepositoriesModelCopyWith<_$_RepositoriesModel> get copyWith =>
      __$$_RepositoriesModelCopyWithImpl<_$_RepositoriesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepositoriesModelToJson(this);
  }
}

abstract class _RepositoriesModel implements RepositoriesModel {
  factory _RepositoriesModel(
      {required final String name,
      required final DateTime created_at,
      required final int forks_count,
      required final int stargazers_count,
      required final int watchers_count,
      required final Map<String, dynamic> owner}) = _$_RepositoriesModel;

  factory _RepositoriesModel.fromJson(Map<String, dynamic> json) =
      _$_RepositoriesModel.fromJson;

  @override
  String get name;
  @override
  DateTime get created_at;
  @override
  int get forks_count;
  @override
  int get stargazers_count;
  @override
  int get watchers_count;
  @override
  Map<String, dynamic> get owner;
  @override
  @JsonKey(ignore: true)
  _$$_RepositoriesModelCopyWith<_$_RepositoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
