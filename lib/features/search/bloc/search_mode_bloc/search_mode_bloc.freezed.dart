// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_mode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchModeEvent {
  SearchModeOption get mode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchModeOption mode) changeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SearchModeOption mode)? changeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchModeOption mode)? changeMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchModeEventChangeMode value) changeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchModeEventChangeMode value)? changeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchModeEventChangeMode value)? changeMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchModeEventCopyWith<SearchModeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchModeEventCopyWith<$Res> {
  factory $SearchModeEventCopyWith(
          SearchModeEvent value, $Res Function(SearchModeEvent) then) =
      _$SearchModeEventCopyWithImpl<$Res>;
  $Res call({SearchModeOption mode});
}

/// @nodoc
class _$SearchModeEventCopyWithImpl<$Res>
    implements $SearchModeEventCopyWith<$Res> {
  _$SearchModeEventCopyWithImpl(this._value, this._then);

  final SearchModeEvent _value;
  // ignore: unused_field
  final $Res Function(SearchModeEvent) _then;

  @override
  $Res call({
    Object? mode = freezed,
  }) {
    return _then(_value.copyWith(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as SearchModeOption,
    ));
  }
}

/// @nodoc
abstract class _$$SearchModeEventChangeModeCopyWith<$Res>
    implements $SearchModeEventCopyWith<$Res> {
  factory _$$SearchModeEventChangeModeCopyWith(
          _$SearchModeEventChangeMode value,
          $Res Function(_$SearchModeEventChangeMode) then) =
      __$$SearchModeEventChangeModeCopyWithImpl<$Res>;
  @override
  $Res call({SearchModeOption mode});
}

/// @nodoc
class __$$SearchModeEventChangeModeCopyWithImpl<$Res>
    extends _$SearchModeEventCopyWithImpl<$Res>
    implements _$$SearchModeEventChangeModeCopyWith<$Res> {
  __$$SearchModeEventChangeModeCopyWithImpl(_$SearchModeEventChangeMode _value,
      $Res Function(_$SearchModeEventChangeMode) _then)
      : super(_value, (v) => _then(v as _$SearchModeEventChangeMode));

  @override
  _$SearchModeEventChangeMode get _value =>
      super._value as _$SearchModeEventChangeMode;

  @override
  $Res call({
    Object? mode = freezed,
  }) {
    return _then(_$SearchModeEventChangeMode(
      mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as SearchModeOption,
    ));
  }
}

/// @nodoc

class _$SearchModeEventChangeMode implements SearchModeEventChangeMode {
  const _$SearchModeEventChangeMode(this.mode);

  @override
  final SearchModeOption mode;

  @override
  String toString() {
    return 'SearchModeEvent.changeMode(mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchModeEventChangeMode &&
            const DeepCollectionEquality().equals(other.mode, mode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(mode));

  @JsonKey(ignore: true)
  @override
  _$$SearchModeEventChangeModeCopyWith<_$SearchModeEventChangeMode>
      get copyWith => __$$SearchModeEventChangeModeCopyWithImpl<
          _$SearchModeEventChangeMode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchModeOption mode) changeMode,
  }) {
    return changeMode(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SearchModeOption mode)? changeMode,
  }) {
    return changeMode?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchModeOption mode)? changeMode,
    required TResult orElse(),
  }) {
    if (changeMode != null) {
      return changeMode(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchModeEventChangeMode value) changeMode,
  }) {
    return changeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchModeEventChangeMode value)? changeMode,
  }) {
    return changeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchModeEventChangeMode value)? changeMode,
    required TResult orElse(),
  }) {
    if (changeMode != null) {
      return changeMode(this);
    }
    return orElse();
  }
}

abstract class SearchModeEventChangeMode implements SearchModeEvent {
  const factory SearchModeEventChangeMode(final SearchModeOption mode) =
      _$SearchModeEventChangeMode;

  @override
  SearchModeOption get mode;
  @override
  @JsonKey(ignore: true)
  _$$SearchModeEventChangeModeCopyWith<_$SearchModeEventChangeMode>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchModeState {
  SearchModeOption get mode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchModeOption mode) mode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SearchModeOption mode)? mode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchModeOption mode)? mode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchModeStateMode value) mode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchModeStateMode value)? mode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchModeStateMode value)? mode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchModeStateCopyWith<SearchModeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchModeStateCopyWith<$Res> {
  factory $SearchModeStateCopyWith(
          SearchModeState value, $Res Function(SearchModeState) then) =
      _$SearchModeStateCopyWithImpl<$Res>;
  $Res call({SearchModeOption mode});
}

/// @nodoc
class _$SearchModeStateCopyWithImpl<$Res>
    implements $SearchModeStateCopyWith<$Res> {
  _$SearchModeStateCopyWithImpl(this._value, this._then);

  final SearchModeState _value;
  // ignore: unused_field
  final $Res Function(SearchModeState) _then;

  @override
  $Res call({
    Object? mode = freezed,
  }) {
    return _then(_value.copyWith(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as SearchModeOption,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchModeStateModeCopyWith<$Res>
    implements $SearchModeStateCopyWith<$Res> {
  factory _$$_SearchModeStateModeCopyWith(_$_SearchModeStateMode value,
          $Res Function(_$_SearchModeStateMode) then) =
      __$$_SearchModeStateModeCopyWithImpl<$Res>;
  @override
  $Res call({SearchModeOption mode});
}

/// @nodoc
class __$$_SearchModeStateModeCopyWithImpl<$Res>
    extends _$SearchModeStateCopyWithImpl<$Res>
    implements _$$_SearchModeStateModeCopyWith<$Res> {
  __$$_SearchModeStateModeCopyWithImpl(_$_SearchModeStateMode _value,
      $Res Function(_$_SearchModeStateMode) _then)
      : super(_value, (v) => _then(v as _$_SearchModeStateMode));

  @override
  _$_SearchModeStateMode get _value => super._value as _$_SearchModeStateMode;

  @override
  $Res call({
    Object? mode = freezed,
  }) {
    return _then(_$_SearchModeStateMode(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as SearchModeOption,
    ));
  }
}

/// @nodoc

class _$_SearchModeStateMode implements _SearchModeStateMode {
  const _$_SearchModeStateMode({required this.mode});

  @override
  final SearchModeOption mode;

  @override
  String toString() {
    return 'SearchModeState.mode(mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchModeStateMode &&
            const DeepCollectionEquality().equals(other.mode, mode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(mode));

  @JsonKey(ignore: true)
  @override
  _$$_SearchModeStateModeCopyWith<_$_SearchModeStateMode> get copyWith =>
      __$$_SearchModeStateModeCopyWithImpl<_$_SearchModeStateMode>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchModeOption mode) mode,
  }) {
    return mode(this.mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SearchModeOption mode)? mode,
  }) {
    return mode?.call(this.mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchModeOption mode)? mode,
    required TResult orElse(),
  }) {
    if (mode != null) {
      return mode(this.mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchModeStateMode value) mode,
  }) {
    return mode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchModeStateMode value)? mode,
  }) {
    return mode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchModeStateMode value)? mode,
    required TResult orElse(),
  }) {
    if (mode != null) {
      return mode(this);
    }
    return orElse();
  }
}

abstract class _SearchModeStateMode implements SearchModeState {
  const factory _SearchModeStateMode({required final SearchModeOption mode}) =
      _$_SearchModeStateMode;

  @override
  SearchModeOption get mode;
  @override
  @JsonKey(ignore: true)
  _$$_SearchModeStateModeCopyWith<_$_SearchModeStateMode> get copyWith =>
      throw _privateConstructorUsedError;
}
