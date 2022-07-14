// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'issue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IssueModel _$IssueModelFromJson(Map<String, dynamic> json) {
  return _IssueModel.fromJson(json);
}

/// @nodoc
mixin _$IssueModel {
  String get title => throw _privateConstructorUsedError;
  DateTime get updated_at => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  Map<String, dynamic> get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IssueModelCopyWith<IssueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueModelCopyWith<$Res> {
  factory $IssueModelCopyWith(
          IssueModel value, $Res Function(IssueModel) then) =
      _$IssueModelCopyWithImpl<$Res>;
  $Res call(
      {String title,
      DateTime updated_at,
      String state,
      Map<String, dynamic> user});
}

/// @nodoc
class _$IssueModelCopyWithImpl<$Res> implements $IssueModelCopyWith<$Res> {
  _$IssueModelCopyWithImpl(this._value, this._then);

  final IssueModel _value;
  // ignore: unused_field
  final $Res Function(IssueModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? updated_at = freezed,
    Object? state = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$$_IssueModelCopyWith<$Res>
    implements $IssueModelCopyWith<$Res> {
  factory _$$_IssueModelCopyWith(
          _$_IssueModel value, $Res Function(_$_IssueModel) then) =
      __$$_IssueModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      DateTime updated_at,
      String state,
      Map<String, dynamic> user});
}

/// @nodoc
class __$$_IssueModelCopyWithImpl<$Res> extends _$IssueModelCopyWithImpl<$Res>
    implements _$$_IssueModelCopyWith<$Res> {
  __$$_IssueModelCopyWithImpl(
      _$_IssueModel _value, $Res Function(_$_IssueModel) _then)
      : super(_value, (v) => _then(v as _$_IssueModel));

  @override
  _$_IssueModel get _value => super._value as _$_IssueModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? updated_at = freezed,
    Object? state = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_IssueModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IssueModel implements _IssueModel {
  _$_IssueModel(
      {required this.title,
      required this.updated_at,
      required this.state,
      required final Map<String, dynamic> user})
      : _user = user;

  factory _$_IssueModel.fromJson(Map<String, dynamic> json) =>
      _$$_IssueModelFromJson(json);

  @override
  final String title;
  @override
  final DateTime updated_at;
  @override
  final String state;
  final Map<String, dynamic> _user;
  @override
  Map<String, dynamic> get user {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_user);
  }

  @override
  String toString() {
    return 'IssueModel(title: $title, updated_at: $updated_at, state: $state, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IssueModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(updated_at),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(_user));

  @JsonKey(ignore: true)
  @override
  _$$_IssueModelCopyWith<_$_IssueModel> get copyWith =>
      __$$_IssueModelCopyWithImpl<_$_IssueModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IssueModelToJson(this);
  }
}

abstract class _IssueModel implements IssueModel {
  factory _IssueModel(
      {required final String title,
      required final DateTime updated_at,
      required final String state,
      required final Map<String, dynamic> user}) = _$_IssueModel;

  factory _IssueModel.fromJson(Map<String, dynamic> json) =
      _$_IssueModel.fromJson;

  @override
  String get title;
  @override
  DateTime get updated_at;
  @override
  String get state;
  @override
  Map<String, dynamic> get user;
  @override
  @JsonKey(ignore: true)
  _$$_IssueModelCopyWith<_$_IssueModel> get copyWith =>
      throw _privateConstructorUsedError;
}
