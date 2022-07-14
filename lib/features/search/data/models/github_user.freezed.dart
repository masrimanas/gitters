// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'github_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubUserModel _$GithubUserModelFromJson(Map<String, dynamic> json) {
  return _GithubUserModel.fromJson(json);
}

/// @nodoc
mixin _$GithubUserModel {
  String get login => throw _privateConstructorUsedError;
  String get avatar_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubUserModelCopyWith<GithubUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubUserModelCopyWith<$Res> {
  factory $GithubUserModelCopyWith(
          GithubUserModel value, $Res Function(GithubUserModel) then) =
      _$GithubUserModelCopyWithImpl<$Res>;
  $Res call({String login, String avatar_url});
}

/// @nodoc
class _$GithubUserModelCopyWithImpl<$Res>
    implements $GithubUserModelCopyWith<$Res> {
  _$GithubUserModelCopyWithImpl(this._value, this._then);

  final GithubUserModel _value;
  // ignore: unused_field
  final $Res Function(GithubUserModel) _then;

  @override
  $Res call({
    Object? login = freezed,
    Object? avatar_url = freezed,
  }) {
    return _then(_value.copyWith(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatar_url: avatar_url == freezed
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_GithubUserModelCopyWith<$Res>
    implements $GithubUserModelCopyWith<$Res> {
  factory _$$_GithubUserModelCopyWith(
          _$_GithubUserModel value, $Res Function(_$_GithubUserModel) then) =
      __$$_GithubUserModelCopyWithImpl<$Res>;
  @override
  $Res call({String login, String avatar_url});
}

/// @nodoc
class __$$_GithubUserModelCopyWithImpl<$Res>
    extends _$GithubUserModelCopyWithImpl<$Res>
    implements _$$_GithubUserModelCopyWith<$Res> {
  __$$_GithubUserModelCopyWithImpl(
      _$_GithubUserModel _value, $Res Function(_$_GithubUserModel) _then)
      : super(_value, (v) => _then(v as _$_GithubUserModel));

  @override
  _$_GithubUserModel get _value => super._value as _$_GithubUserModel;

  @override
  $Res call({
    Object? login = freezed,
    Object? avatar_url = freezed,
  }) {
    return _then(_$_GithubUserModel(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatar_url: avatar_url == freezed
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GithubUserModel implements _GithubUserModel {
  _$_GithubUserModel({required this.login, required this.avatar_url});

  factory _$_GithubUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_GithubUserModelFromJson(json);

  @override
  final String login;
  @override
  final String avatar_url;

  @override
  String toString() {
    return 'GithubUserModel(login: $login, avatar_url: $avatar_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubUserModel &&
            const DeepCollectionEquality().equals(other.login, login) &&
            const DeepCollectionEquality()
                .equals(other.avatar_url, avatar_url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(login),
      const DeepCollectionEquality().hash(avatar_url));

  @JsonKey(ignore: true)
  @override
  _$$_GithubUserModelCopyWith<_$_GithubUserModel> get copyWith =>
      __$$_GithubUserModelCopyWithImpl<_$_GithubUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GithubUserModelToJson(this);
  }
}

abstract class _GithubUserModel implements GithubUserModel {
  factory _GithubUserModel(
      {required final String login,
      required final String avatar_url}) = _$_GithubUserModel;

  factory _GithubUserModel.fromJson(Map<String, dynamic> json) =
      _$_GithubUserModel.fromJson;

  @override
  String get login;
  @override
  String get avatar_url;
  @override
  @JsonKey(ignore: true)
  _$$_GithubUserModelCopyWith<_$_GithubUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
