// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) fetched,
    required TResult Function(SearchItemMode mode) changed,
    required TResult Function(String keyword) newQuery,
    required TResult Function(int num) getPageNumber,
    required TResult Function() getItemLazy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? fetched,
    TResult Function(SearchItemMode mode)? changed,
    TResult Function(String keyword)? newQuery,
    TResult Function(int num)? getPageNumber,
    TResult Function()? getItemLazy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? fetched,
    TResult Function(SearchItemMode mode)? changed,
    TResult Function(String keyword)? newQuery,
    TResult Function(int num)? getPageNumber,
    TResult Function()? getItemLazy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchEventFetched value) fetched,
    required TResult Function(SearchEventChanged value) changed,
    required TResult Function(SearchEventNewQuery value) newQuery,
    required TResult Function(SearchEventGetPageNumber value) getPageNumber,
    required TResult Function(SearchEventGetItemLazy value) getItemLazy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchEventFetched value)? fetched,
    TResult Function(SearchEventChanged value)? changed,
    TResult Function(SearchEventNewQuery value)? newQuery,
    TResult Function(SearchEventGetPageNumber value)? getPageNumber,
    TResult Function(SearchEventGetItemLazy value)? getItemLazy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchEventFetched value)? fetched,
    TResult Function(SearchEventChanged value)? changed,
    TResult Function(SearchEventNewQuery value)? newQuery,
    TResult Function(SearchEventGetPageNumber value)? getPageNumber,
    TResult Function(SearchEventGetItemLazy value)? getItemLazy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class _$$SearchEventFetchedCopyWith<$Res> {
  factory _$$SearchEventFetchedCopyWith(_$SearchEventFetched value,
          $Res Function(_$SearchEventFetched) then) =
      __$$SearchEventFetchedCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class __$$SearchEventFetchedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$SearchEventFetchedCopyWith<$Res> {
  __$$SearchEventFetchedCopyWithImpl(
      _$SearchEventFetched _value, $Res Function(_$SearchEventFetched) _then)
      : super(_value, (v) => _then(v as _$SearchEventFetched));

  @override
  _$SearchEventFetched get _value => super._value as _$SearchEventFetched;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_$SearchEventFetched(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SearchEventFetched
    with DiagnosticableTreeMixin
    implements SearchEventFetched {
  const _$SearchEventFetched(this.page);

  @override
  final int page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.fetched(page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchEvent.fetched'))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchEventFetched &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$$SearchEventFetchedCopyWith<_$SearchEventFetched> get copyWith =>
      __$$SearchEventFetchedCopyWithImpl<_$SearchEventFetched>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) fetched,
    required TResult Function(SearchItemMode mode) changed,
    required TResult Function(String keyword) newQuery,
    required TResult Function(int num) getPageNumber,
    required TResult Function() getItemLazy,
  }) {
    return fetched(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? fetched,
    TResult Function(SearchItemMode mode)? changed,
    TResult Function(String keyword)? newQuery,
    TResult Function(int num)? getPageNumber,
    TResult Function()? getItemLazy,
  }) {
    return fetched?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? fetched,
    TResult Function(SearchItemMode mode)? changed,
    TResult Function(String keyword)? newQuery,
    TResult Function(int num)? getPageNumber,
    TResult Function()? getItemLazy,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchEventFetched value) fetched,
    required TResult Function(SearchEventChanged value) changed,
    required TResult Function(SearchEventNewQuery value) newQuery,
    required TResult Function(SearchEventGetPageNumber value) getPageNumber,
    required TResult Function(SearchEventGetItemLazy value) getItemLazy,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchEventFetched value)? fetched,
    TResult Function(SearchEventChanged value)? changed,
    TResult Function(SearchEventNewQuery value)? newQuery,
    TResult Function(SearchEventGetPageNumber value)? getPageNumber,
    TResult Function(SearchEventGetItemLazy value)? getItemLazy,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchEventFetched value)? fetched,
    TResult Function(SearchEventChanged value)? changed,
    TResult Function(SearchEventNewQuery value)? newQuery,
    TResult Function(SearchEventGetPageNumber value)? getPageNumber,
    TResult Function(SearchEventGetItemLazy value)? getItemLazy,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class SearchEventFetched implements SearchEvent {
  const factory SearchEventFetched(final int page) = _$SearchEventFetched;

  int get page;
  @JsonKey(ignore: true)
  _$$SearchEventFetchedCopyWith<_$SearchEventFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchEventChangedCopyWith<$Res> {
  factory _$$SearchEventChangedCopyWith(_$SearchEventChanged value,
          $Res Function(_$SearchEventChanged) then) =
      __$$SearchEventChangedCopyWithImpl<$Res>;
  $Res call({SearchItemMode mode});
}

/// @nodoc
class __$$SearchEventChangedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$SearchEventChangedCopyWith<$Res> {
  __$$SearchEventChangedCopyWithImpl(
      _$SearchEventChanged _value, $Res Function(_$SearchEventChanged) _then)
      : super(_value, (v) => _then(v as _$SearchEventChanged));

  @override
  _$SearchEventChanged get _value => super._value as _$SearchEventChanged;

  @override
  $Res call({
    Object? mode = freezed,
  }) {
    return _then(_$SearchEventChanged(
      mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as SearchItemMode,
    ));
  }
}

/// @nodoc

class _$SearchEventChanged
    with DiagnosticableTreeMixin
    implements SearchEventChanged {
  const _$SearchEventChanged(this.mode);

  @override
  final SearchItemMode mode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.changed(mode: $mode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchEvent.changed'))
      ..add(DiagnosticsProperty('mode', mode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchEventChanged &&
            const DeepCollectionEquality().equals(other.mode, mode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(mode));

  @JsonKey(ignore: true)
  @override
  _$$SearchEventChangedCopyWith<_$SearchEventChanged> get copyWith =>
      __$$SearchEventChangedCopyWithImpl<_$SearchEventChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) fetched,
    required TResult Function(SearchItemMode mode) changed,
    required TResult Function(String keyword) newQuery,
    required TResult Function(int num) getPageNumber,
    required TResult Function() getItemLazy,
  }) {
    return changed(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? fetched,
    TResult Function(SearchItemMode mode)? changed,
    TResult Function(String keyword)? newQuery,
    TResult Function(int num)? getPageNumber,
    TResult Function()? getItemLazy,
  }) {
    return changed?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? fetched,
    TResult Function(SearchItemMode mode)? changed,
    TResult Function(String keyword)? newQuery,
    TResult Function(int num)? getPageNumber,
    TResult Function()? getItemLazy,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchEventFetched value) fetched,
    required TResult Function(SearchEventChanged value) changed,
    required TResult Function(SearchEventNewQuery value) newQuery,
    required TResult Function(SearchEventGetPageNumber value) getPageNumber,
    required TResult Function(SearchEventGetItemLazy value) getItemLazy,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchEventFetched value)? fetched,
    TResult Function(SearchEventChanged value)? changed,
    TResult Function(SearchEventNewQuery value)? newQuery,
    TResult Function(SearchEventGetPageNumber value)? getPageNumber,
    TResult Function(SearchEventGetItemLazy value)? getItemLazy,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchEventFetched value)? fetched,
    TResult Function(SearchEventChanged value)? changed,
    TResult Function(SearchEventNewQuery value)? newQuery,
    TResult Function(SearchEventGetPageNumber value)? getPageNumber,
    TResult Function(SearchEventGetItemLazy value)? getItemLazy,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class SearchEventChanged implements SearchEvent {
  const factory SearchEventChanged(final SearchItemMode mode) =
      _$SearchEventChanged;

  SearchItemMode get mode;
  @JsonKey(ignore: true)
  _$$SearchEventChangedCopyWith<_$SearchEventChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchEventNewQueryCopyWith<$Res> {
  factory _$$SearchEventNewQueryCopyWith(_$SearchEventNewQuery value,
          $Res Function(_$SearchEventNewQuery) then) =
      __$$SearchEventNewQueryCopyWithImpl<$Res>;
  $Res call({String keyword});
}

/// @nodoc
class __$$SearchEventNewQueryCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$SearchEventNewQueryCopyWith<$Res> {
  __$$SearchEventNewQueryCopyWithImpl(
      _$SearchEventNewQuery _value, $Res Function(_$SearchEventNewQuery) _then)
      : super(_value, (v) => _then(v as _$SearchEventNewQuery));

  @override
  _$SearchEventNewQuery get _value => super._value as _$SearchEventNewQuery;

  @override
  $Res call({
    Object? keyword = freezed,
  }) {
    return _then(_$SearchEventNewQuery(
      keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchEventNewQuery
    with DiagnosticableTreeMixin
    implements SearchEventNewQuery {
  const _$SearchEventNewQuery(this.keyword);

  @override
  final String keyword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.newQuery(keyword: $keyword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchEvent.newQuery'))
      ..add(DiagnosticsProperty('keyword', keyword));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchEventNewQuery &&
            const DeepCollectionEquality().equals(other.keyword, keyword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(keyword));

  @JsonKey(ignore: true)
  @override
  _$$SearchEventNewQueryCopyWith<_$SearchEventNewQuery> get copyWith =>
      __$$SearchEventNewQueryCopyWithImpl<_$SearchEventNewQuery>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) fetched,
    required TResult Function(SearchItemMode mode) changed,
    required TResult Function(String keyword) newQuery,
    required TResult Function(int num) getPageNumber,
    required TResult Function() getItemLazy,
  }) {
    return newQuery(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? fetched,
    TResult Function(SearchItemMode mode)? changed,
    TResult Function(String keyword)? newQuery,
    TResult Function(int num)? getPageNumber,
    TResult Function()? getItemLazy,
  }) {
    return newQuery?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? fetched,
    TResult Function(SearchItemMode mode)? changed,
    TResult Function(String keyword)? newQuery,
    TResult Function(int num)? getPageNumber,
    TResult Function()? getItemLazy,
    required TResult orElse(),
  }) {
    if (newQuery != null) {
      return newQuery(keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchEventFetched value) fetched,
    required TResult Function(SearchEventChanged value) changed,
    required TResult Function(SearchEventNewQuery value) newQuery,
    required TResult Function(SearchEventGetPageNumber value) getPageNumber,
    required TResult Function(SearchEventGetItemLazy value) getItemLazy,
  }) {
    return newQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchEventFetched value)? fetched,
    TResult Function(SearchEventChanged value)? changed,
    TResult Function(SearchEventNewQuery value)? newQuery,
    TResult Function(SearchEventGetPageNumber value)? getPageNumber,
    TResult Function(SearchEventGetItemLazy value)? getItemLazy,
  }) {
    return newQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchEventFetched value)? fetched,
    TResult Function(SearchEventChanged value)? changed,
    TResult Function(SearchEventNewQuery value)? newQuery,
    TResult Function(SearchEventGetPageNumber value)? getPageNumber,
    TResult Function(SearchEventGetItemLazy value)? getItemLazy,
    required TResult orElse(),
  }) {
    if (newQuery != null) {
      return newQuery(this);
    }
    return orElse();
  }
}

abstract class SearchEventNewQuery implements SearchEvent {
  const factory SearchEventNewQuery(final String keyword) =
      _$SearchEventNewQuery;

  String get keyword;
  @JsonKey(ignore: true)
  _$$SearchEventNewQueryCopyWith<_$SearchEventNewQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchEventGetPageNumberCopyWith<$Res> {
  factory _$$SearchEventGetPageNumberCopyWith(_$SearchEventGetPageNumber value,
          $Res Function(_$SearchEventGetPageNumber) then) =
      __$$SearchEventGetPageNumberCopyWithImpl<$Res>;
  $Res call({int num});
}

/// @nodoc
class __$$SearchEventGetPageNumberCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$SearchEventGetPageNumberCopyWith<$Res> {
  __$$SearchEventGetPageNumberCopyWithImpl(_$SearchEventGetPageNumber _value,
      $Res Function(_$SearchEventGetPageNumber) _then)
      : super(_value, (v) => _then(v as _$SearchEventGetPageNumber));

  @override
  _$SearchEventGetPageNumber get _value =>
      super._value as _$SearchEventGetPageNumber;

  @override
  $Res call({
    Object? num = freezed,
  }) {
    return _then(_$SearchEventGetPageNumber(
      num == freezed
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SearchEventGetPageNumber
    with DiagnosticableTreeMixin
    implements SearchEventGetPageNumber {
  const _$SearchEventGetPageNumber(this.num);

  @override
  final int num;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.getPageNumber(num: $num)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchEvent.getPageNumber'))
      ..add(DiagnosticsProperty('num', num));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchEventGetPageNumber &&
            const DeepCollectionEquality().equals(other.num, num));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(num));

  @JsonKey(ignore: true)
  @override
  _$$SearchEventGetPageNumberCopyWith<_$SearchEventGetPageNumber>
      get copyWith =>
          __$$SearchEventGetPageNumberCopyWithImpl<_$SearchEventGetPageNumber>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) fetched,
    required TResult Function(SearchItemMode mode) changed,
    required TResult Function(String keyword) newQuery,
    required TResult Function(int num) getPageNumber,
    required TResult Function() getItemLazy,
  }) {
    return getPageNumber(num);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? fetched,
    TResult Function(SearchItemMode mode)? changed,
    TResult Function(String keyword)? newQuery,
    TResult Function(int num)? getPageNumber,
    TResult Function()? getItemLazy,
  }) {
    return getPageNumber?.call(num);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? fetched,
    TResult Function(SearchItemMode mode)? changed,
    TResult Function(String keyword)? newQuery,
    TResult Function(int num)? getPageNumber,
    TResult Function()? getItemLazy,
    required TResult orElse(),
  }) {
    if (getPageNumber != null) {
      return getPageNumber(num);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchEventFetched value) fetched,
    required TResult Function(SearchEventChanged value) changed,
    required TResult Function(SearchEventNewQuery value) newQuery,
    required TResult Function(SearchEventGetPageNumber value) getPageNumber,
    required TResult Function(SearchEventGetItemLazy value) getItemLazy,
  }) {
    return getPageNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchEventFetched value)? fetched,
    TResult Function(SearchEventChanged value)? changed,
    TResult Function(SearchEventNewQuery value)? newQuery,
    TResult Function(SearchEventGetPageNumber value)? getPageNumber,
    TResult Function(SearchEventGetItemLazy value)? getItemLazy,
  }) {
    return getPageNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchEventFetched value)? fetched,
    TResult Function(SearchEventChanged value)? changed,
    TResult Function(SearchEventNewQuery value)? newQuery,
    TResult Function(SearchEventGetPageNumber value)? getPageNumber,
    TResult Function(SearchEventGetItemLazy value)? getItemLazy,
    required TResult orElse(),
  }) {
    if (getPageNumber != null) {
      return getPageNumber(this);
    }
    return orElse();
  }
}

abstract class SearchEventGetPageNumber implements SearchEvent {
  const factory SearchEventGetPageNumber(final int num) =
      _$SearchEventGetPageNumber;

  int get num;
  @JsonKey(ignore: true)
  _$$SearchEventGetPageNumberCopyWith<_$SearchEventGetPageNumber>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchEventGetItemLazyCopyWith<$Res> {
  factory _$$SearchEventGetItemLazyCopyWith(_$SearchEventGetItemLazy value,
          $Res Function(_$SearchEventGetItemLazy) then) =
      __$$SearchEventGetItemLazyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchEventGetItemLazyCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$SearchEventGetItemLazyCopyWith<$Res> {
  __$$SearchEventGetItemLazyCopyWithImpl(_$SearchEventGetItemLazy _value,
      $Res Function(_$SearchEventGetItemLazy) _then)
      : super(_value, (v) => _then(v as _$SearchEventGetItemLazy));

  @override
  _$SearchEventGetItemLazy get _value =>
      super._value as _$SearchEventGetItemLazy;
}

/// @nodoc

class _$SearchEventGetItemLazy
    with DiagnosticableTreeMixin
    implements SearchEventGetItemLazy {
  const _$SearchEventGetItemLazy();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.getItemLazy()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SearchEvent.getItemLazy'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchEventGetItemLazy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) fetched,
    required TResult Function(SearchItemMode mode) changed,
    required TResult Function(String keyword) newQuery,
    required TResult Function(int num) getPageNumber,
    required TResult Function() getItemLazy,
  }) {
    return getItemLazy();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? fetched,
    TResult Function(SearchItemMode mode)? changed,
    TResult Function(String keyword)? newQuery,
    TResult Function(int num)? getPageNumber,
    TResult Function()? getItemLazy,
  }) {
    return getItemLazy?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? fetched,
    TResult Function(SearchItemMode mode)? changed,
    TResult Function(String keyword)? newQuery,
    TResult Function(int num)? getPageNumber,
    TResult Function()? getItemLazy,
    required TResult orElse(),
  }) {
    if (getItemLazy != null) {
      return getItemLazy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchEventFetched value) fetched,
    required TResult Function(SearchEventChanged value) changed,
    required TResult Function(SearchEventNewQuery value) newQuery,
    required TResult Function(SearchEventGetPageNumber value) getPageNumber,
    required TResult Function(SearchEventGetItemLazy value) getItemLazy,
  }) {
    return getItemLazy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchEventFetched value)? fetched,
    TResult Function(SearchEventChanged value)? changed,
    TResult Function(SearchEventNewQuery value)? newQuery,
    TResult Function(SearchEventGetPageNumber value)? getPageNumber,
    TResult Function(SearchEventGetItemLazy value)? getItemLazy,
  }) {
    return getItemLazy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchEventFetched value)? fetched,
    TResult Function(SearchEventChanged value)? changed,
    TResult Function(SearchEventNewQuery value)? newQuery,
    TResult Function(SearchEventGetPageNumber value)? getPageNumber,
    TResult Function(SearchEventGetItemLazy value)? getItemLazy,
    required TResult orElse(),
  }) {
    if (getItemLazy != null) {
      return getItemLazy(this);
    }
    return orElse();
  }
}

abstract class SearchEventGetItemLazy implements SearchEvent {
  const factory SearchEventGetItemLazy() = _$SearchEventGetItemLazy;
}

/// @nodoc
mixin _$SearchState {
  SearchStatus get status => throw _privateConstructorUsedError;
  List<SearchItem> get items => throw _privateConstructorUsedError;
  List<SearchItem> get items_lazy => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  SearchItemMode get mode => throw _privateConstructorUsedError;
  int get total_items => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get keyword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {SearchStatus status,
      List<SearchItem> items,
      List<SearchItem> items_lazy,
      bool hasReachedMax,
      SearchItemMode mode,
      int total_items,
      int page,
      String keyword});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? items = freezed,
    Object? items_lazy = freezed,
    Object? hasReachedMax = freezed,
    Object? mode = freezed,
    Object? total_items = freezed,
    Object? page = freezed,
    Object? keyword = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchStatus,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      items_lazy: items_lazy == freezed
          ? _value.items_lazy
          : items_lazy // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as SearchItemMode,
      total_items: total_items == freezed
          ? _value.total_items
          : total_items // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SearchStatus status,
      List<SearchItem> items,
      List<SearchItem> items_lazy,
      bool hasReachedMax,
      SearchItemMode mode,
      int total_items,
      int page,
      String keyword});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, (v) => _then(v as _$_SearchState));

  @override
  _$_SearchState get _value => super._value as _$_SearchState;

  @override
  $Res call({
    Object? status = freezed,
    Object? items = freezed,
    Object? items_lazy = freezed,
    Object? hasReachedMax = freezed,
    Object? mode = freezed,
    Object? total_items = freezed,
    Object? page = freezed,
    Object? keyword = freezed,
  }) {
    return _then(_$_SearchState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchStatus,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      items_lazy: items_lazy == freezed
          ? _value._items_lazy
          : items_lazy // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as SearchItemMode,
      total_items: total_items == freezed
          ? _value.total_items
          : total_items // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchState with DiagnosticableTreeMixin implements _SearchState {
  const _$_SearchState(
      {required this.status,
      required final List<SearchItem> items,
      required final List<SearchItem> items_lazy,
      required this.hasReachedMax,
      required this.mode,
      required this.total_items,
      required this.page,
      required this.keyword})
      : _items = items,
        _items_lazy = items_lazy;

  @override
  final SearchStatus status;
  final List<SearchItem> _items;
  @override
  List<SearchItem> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<SearchItem> _items_lazy;
  @override
  List<SearchItem> get items_lazy {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items_lazy);
  }

  @override
  final bool hasReachedMax;
  @override
  final SearchItemMode mode;
  @override
  final int total_items;
  @override
  final int page;
  @override
  final String keyword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState(status: $status, items: $items, items_lazy: $items_lazy, hasReachedMax: $hasReachedMax, mode: $mode, total_items: $total_items, page: $page, keyword: $keyword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('items_lazy', items_lazy))
      ..add(DiagnosticsProperty('hasReachedMax', hasReachedMax))
      ..add(DiagnosticsProperty('mode', mode))
      ..add(DiagnosticsProperty('total_items', total_items))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('keyword', keyword));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._items_lazy, _items_lazy) &&
            const DeepCollectionEquality()
                .equals(other.hasReachedMax, hasReachedMax) &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality()
                .equals(other.total_items, total_items) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.keyword, keyword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_items_lazy),
      const DeepCollectionEquality().hash(hasReachedMax),
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(total_items),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(keyword));

  @JsonKey(ignore: true)
  @override
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final SearchStatus status,
      required final List<SearchItem> items,
      required final List<SearchItem> items_lazy,
      required final bool hasReachedMax,
      required final SearchItemMode mode,
      required final int total_items,
      required final int page,
      required final String keyword}) = _$_SearchState;

  @override
  SearchStatus get status;
  @override
  List<SearchItem> get items;
  @override
  List<SearchItem> get items_lazy;
  @override
  bool get hasReachedMax;
  @override
  SearchItemMode get mode;
  @override
  int get total_items;
  @override
  int get page;
  @override
  String get keyword;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
