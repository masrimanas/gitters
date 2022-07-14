// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchItem {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RepositoriesModel repositories) repositories,
    required TResult Function(GithubUserModel user) users,
    required TResult Function(IssueModel issues) issues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RepositoriesModel repositories)? repositories,
    TResult Function(GithubUserModel user)? users,
    TResult Function(IssueModel issues)? issues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RepositoriesModel repositories)? repositories,
    TResult Function(GithubUserModel user)? users,
    TResult Function(IssueModel issues)? issues,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Repositories value) repositories,
    required TResult Function(Users value) users,
    required TResult Function(Issues value) issues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Repositories value)? repositories,
    TResult Function(Users value)? users,
    TResult Function(Issues value)? issues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Repositories value)? repositories,
    TResult Function(Users value)? users,
    TResult Function(Issues value)? issues,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchItemCopyWith<$Res> {
  factory $SearchItemCopyWith(
          SearchItem value, $Res Function(SearchItem) then) =
      _$SearchItemCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchItemCopyWithImpl<$Res> implements $SearchItemCopyWith<$Res> {
  _$SearchItemCopyWithImpl(this._value, this._then);

  final SearchItem _value;
  // ignore: unused_field
  final $Res Function(SearchItem) _then;
}

/// @nodoc
abstract class _$$RepositoriesCopyWith<$Res> {
  factory _$$RepositoriesCopyWith(
          _$Repositories value, $Res Function(_$Repositories) then) =
      __$$RepositoriesCopyWithImpl<$Res>;
  $Res call({RepositoriesModel repositories});

  $RepositoriesModelCopyWith<$Res> get repositories;
}

/// @nodoc
class __$$RepositoriesCopyWithImpl<$Res> extends _$SearchItemCopyWithImpl<$Res>
    implements _$$RepositoriesCopyWith<$Res> {
  __$$RepositoriesCopyWithImpl(
      _$Repositories _value, $Res Function(_$Repositories) _then)
      : super(_value, (v) => _then(v as _$Repositories));

  @override
  _$Repositories get _value => super._value as _$Repositories;

  @override
  $Res call({
    Object? repositories = freezed,
  }) {
    return _then(_$Repositories(
      repositories == freezed
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as RepositoriesModel,
    ));
  }

  @override
  $RepositoriesModelCopyWith<$Res> get repositories {
    return $RepositoriesModelCopyWith<$Res>(_value.repositories, (value) {
      return _then(_value.copyWith(repositories: value));
    });
  }
}

/// @nodoc

class _$Repositories implements Repositories {
  _$Repositories(this.repositories);

  @override
  final RepositoriesModel repositories;

  @override
  String toString() {
    return 'SearchItem.repositories(repositories: $repositories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Repositories &&
            const DeepCollectionEquality()
                .equals(other.repositories, repositories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(repositories));

  @JsonKey(ignore: true)
  @override
  _$$RepositoriesCopyWith<_$Repositories> get copyWith =>
      __$$RepositoriesCopyWithImpl<_$Repositories>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RepositoriesModel repositories) repositories,
    required TResult Function(GithubUserModel user) users,
    required TResult Function(IssueModel issues) issues,
  }) {
    return repositories(this.repositories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RepositoriesModel repositories)? repositories,
    TResult Function(GithubUserModel user)? users,
    TResult Function(IssueModel issues)? issues,
  }) {
    return repositories?.call(this.repositories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RepositoriesModel repositories)? repositories,
    TResult Function(GithubUserModel user)? users,
    TResult Function(IssueModel issues)? issues,
    required TResult orElse(),
  }) {
    if (repositories != null) {
      return repositories(this.repositories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Repositories value) repositories,
    required TResult Function(Users value) users,
    required TResult Function(Issues value) issues,
  }) {
    return repositories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Repositories value)? repositories,
    TResult Function(Users value)? users,
    TResult Function(Issues value)? issues,
  }) {
    return repositories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Repositories value)? repositories,
    TResult Function(Users value)? users,
    TResult Function(Issues value)? issues,
    required TResult orElse(),
  }) {
    if (repositories != null) {
      return repositories(this);
    }
    return orElse();
  }
}

abstract class Repositories implements SearchItem {
  factory Repositories(final RepositoriesModel repositories) = _$Repositories;

  RepositoriesModel get repositories;
  @JsonKey(ignore: true)
  _$$RepositoriesCopyWith<_$Repositories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsersCopyWith<$Res> {
  factory _$$UsersCopyWith(_$Users value, $Res Function(_$Users) then) =
      __$$UsersCopyWithImpl<$Res>;
  $Res call({GithubUserModel user});

  $GithubUserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$UsersCopyWithImpl<$Res> extends _$SearchItemCopyWithImpl<$Res>
    implements _$$UsersCopyWith<$Res> {
  __$$UsersCopyWithImpl(_$Users _value, $Res Function(_$Users) _then)
      : super(_value, (v) => _then(v as _$Users));

  @override
  _$Users get _value => super._value as _$Users;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$Users(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as GithubUserModel,
    ));
  }

  @override
  $GithubUserModelCopyWith<$Res> get user {
    return $GithubUserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$Users implements Users {
  _$Users(this.user);

  @override
  final GithubUserModel user;

  @override
  String toString() {
    return 'SearchItem.users(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Users &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$UsersCopyWith<_$Users> get copyWith =>
      __$$UsersCopyWithImpl<_$Users>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RepositoriesModel repositories) repositories,
    required TResult Function(GithubUserModel user) users,
    required TResult Function(IssueModel issues) issues,
  }) {
    return users(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RepositoriesModel repositories)? repositories,
    TResult Function(GithubUserModel user)? users,
    TResult Function(IssueModel issues)? issues,
  }) {
    return users?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RepositoriesModel repositories)? repositories,
    TResult Function(GithubUserModel user)? users,
    TResult Function(IssueModel issues)? issues,
    required TResult orElse(),
  }) {
    if (users != null) {
      return users(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Repositories value) repositories,
    required TResult Function(Users value) users,
    required TResult Function(Issues value) issues,
  }) {
    return users(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Repositories value)? repositories,
    TResult Function(Users value)? users,
    TResult Function(Issues value)? issues,
  }) {
    return users?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Repositories value)? repositories,
    TResult Function(Users value)? users,
    TResult Function(Issues value)? issues,
    required TResult orElse(),
  }) {
    if (users != null) {
      return users(this);
    }
    return orElse();
  }
}

abstract class Users implements SearchItem {
  factory Users(final GithubUserModel user) = _$Users;

  GithubUserModel get user;
  @JsonKey(ignore: true)
  _$$UsersCopyWith<_$Users> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IssuesCopyWith<$Res> {
  factory _$$IssuesCopyWith(_$Issues value, $Res Function(_$Issues) then) =
      __$$IssuesCopyWithImpl<$Res>;
  $Res call({IssueModel issues});

  $IssueModelCopyWith<$Res> get issues;
}

/// @nodoc
class __$$IssuesCopyWithImpl<$Res> extends _$SearchItemCopyWithImpl<$Res>
    implements _$$IssuesCopyWith<$Res> {
  __$$IssuesCopyWithImpl(_$Issues _value, $Res Function(_$Issues) _then)
      : super(_value, (v) => _then(v as _$Issues));

  @override
  _$Issues get _value => super._value as _$Issues;

  @override
  $Res call({
    Object? issues = freezed,
  }) {
    return _then(_$Issues(
      issues == freezed
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as IssueModel,
    ));
  }

  @override
  $IssueModelCopyWith<$Res> get issues {
    return $IssueModelCopyWith<$Res>(_value.issues, (value) {
      return _then(_value.copyWith(issues: value));
    });
  }
}

/// @nodoc

class _$Issues implements Issues {
  _$Issues(this.issues);

  @override
  final IssueModel issues;

  @override
  String toString() {
    return 'SearchItem.issues(issues: $issues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Issues &&
            const DeepCollectionEquality().equals(other.issues, issues));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(issues));

  @JsonKey(ignore: true)
  @override
  _$$IssuesCopyWith<_$Issues> get copyWith =>
      __$$IssuesCopyWithImpl<_$Issues>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RepositoriesModel repositories) repositories,
    required TResult Function(GithubUserModel user) users,
    required TResult Function(IssueModel issues) issues,
  }) {
    return issues(this.issues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RepositoriesModel repositories)? repositories,
    TResult Function(GithubUserModel user)? users,
    TResult Function(IssueModel issues)? issues,
  }) {
    return issues?.call(this.issues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RepositoriesModel repositories)? repositories,
    TResult Function(GithubUserModel user)? users,
    TResult Function(IssueModel issues)? issues,
    required TResult orElse(),
  }) {
    if (issues != null) {
      return issues(this.issues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Repositories value) repositories,
    required TResult Function(Users value) users,
    required TResult Function(Issues value) issues,
  }) {
    return issues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Repositories value)? repositories,
    TResult Function(Users value)? users,
    TResult Function(Issues value)? issues,
  }) {
    return issues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Repositories value)? repositories,
    TResult Function(Users value)? users,
    TResult Function(Issues value)? issues,
    required TResult orElse(),
  }) {
    if (issues != null) {
      return issues(this);
    }
    return orElse();
  }
}

abstract class Issues implements SearchItem {
  factory Issues(final IssueModel issues) = _$Issues;

  IssueModel get issues;
  @JsonKey(ignore: true)
  _$$IssuesCopyWith<_$Issues> get copyWith =>
      throw _privateConstructorUsedError;
}
