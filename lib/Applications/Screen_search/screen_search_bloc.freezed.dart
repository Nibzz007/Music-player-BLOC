// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'screen_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScreenSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialSearch,
    required TResult Function(String searchValue) searchStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialSearch,
    TResult? Function(String searchValue)? searchStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialSearch,
    TResult Function(String searchValue)? searchStudent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSearch value) initialSearch,
    required TResult Function(SearchStudent value) searchStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSearch value)? initialSearch,
    TResult? Function(SearchStudent value)? searchStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSearch value)? initialSearch,
    TResult Function(SearchStudent value)? searchStudent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenSearchEventCopyWith<$Res> {
  factory $ScreenSearchEventCopyWith(
          ScreenSearchEvent value, $Res Function(ScreenSearchEvent) then) =
      _$ScreenSearchEventCopyWithImpl<$Res, ScreenSearchEvent>;
}

/// @nodoc
class _$ScreenSearchEventCopyWithImpl<$Res, $Val extends ScreenSearchEvent>
    implements $ScreenSearchEventCopyWith<$Res> {
  _$ScreenSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialSearchCopyWith<$Res> {
  factory _$$InitialSearchCopyWith(
          _$InitialSearch value, $Res Function(_$InitialSearch) then) =
      __$$InitialSearchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialSearchCopyWithImpl<$Res>
    extends _$ScreenSearchEventCopyWithImpl<$Res, _$InitialSearch>
    implements _$$InitialSearchCopyWith<$Res> {
  __$$InitialSearchCopyWithImpl(
      _$InitialSearch _value, $Res Function(_$InitialSearch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialSearch with DiagnosticableTreeMixin implements InitialSearch {
  const _$InitialSearch();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScreenSearchEvent.initialSearch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ScreenSearchEvent.initialSearch'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialSearch,
    required TResult Function(String searchValue) searchStudent,
  }) {
    return initialSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialSearch,
    TResult? Function(String searchValue)? searchStudent,
  }) {
    return initialSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialSearch,
    TResult Function(String searchValue)? searchStudent,
    required TResult orElse(),
  }) {
    if (initialSearch != null) {
      return initialSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSearch value) initialSearch,
    required TResult Function(SearchStudent value) searchStudent,
  }) {
    return initialSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSearch value)? initialSearch,
    TResult? Function(SearchStudent value)? searchStudent,
  }) {
    return initialSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSearch value)? initialSearch,
    TResult Function(SearchStudent value)? searchStudent,
    required TResult orElse(),
  }) {
    if (initialSearch != null) {
      return initialSearch(this);
    }
    return orElse();
  }
}

abstract class InitialSearch implements ScreenSearchEvent {
  const factory InitialSearch() = _$InitialSearch;
}

/// @nodoc
abstract class _$$SearchStudentCopyWith<$Res> {
  factory _$$SearchStudentCopyWith(
          _$SearchStudent value, $Res Function(_$SearchStudent) then) =
      __$$SearchStudentCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchValue});
}

/// @nodoc
class __$$SearchStudentCopyWithImpl<$Res>
    extends _$ScreenSearchEventCopyWithImpl<$Res, _$SearchStudent>
    implements _$$SearchStudentCopyWith<$Res> {
  __$$SearchStudentCopyWithImpl(
      _$SearchStudent _value, $Res Function(_$SearchStudent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchValue = null,
  }) {
    return _then(_$SearchStudent(
      searchValue: null == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchStudent with DiagnosticableTreeMixin implements SearchStudent {
  const _$SearchStudent({required this.searchValue});

  @override
  final String searchValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScreenSearchEvent.searchStudent(searchValue: $searchValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScreenSearchEvent.searchStudent'))
      ..add(DiagnosticsProperty('searchValue', searchValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStudent &&
            (identical(other.searchValue, searchValue) ||
                other.searchValue == searchValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStudentCopyWith<_$SearchStudent> get copyWith =>
      __$$SearchStudentCopyWithImpl<_$SearchStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialSearch,
    required TResult Function(String searchValue) searchStudent,
  }) {
    return searchStudent(searchValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialSearch,
    TResult? Function(String searchValue)? searchStudent,
  }) {
    return searchStudent?.call(searchValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialSearch,
    TResult Function(String searchValue)? searchStudent,
    required TResult orElse(),
  }) {
    if (searchStudent != null) {
      return searchStudent(searchValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSearch value) initialSearch,
    required TResult Function(SearchStudent value) searchStudent,
  }) {
    return searchStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSearch value)? initialSearch,
    TResult? Function(SearchStudent value)? searchStudent,
  }) {
    return searchStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSearch value)? initialSearch,
    TResult Function(SearchStudent value)? searchStudent,
    required TResult orElse(),
  }) {
    if (searchStudent != null) {
      return searchStudent(this);
    }
    return orElse();
  }
}

abstract class SearchStudent implements ScreenSearchEvent {
  const factory SearchStudent({required final String searchValue}) =
      _$SearchStudent;

  String get searchValue;
  @JsonKey(ignore: true)
  _$$SearchStudentCopyWith<_$SearchStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScreenSearchState {
  List<Songs> get songs => throw _privateConstructorUsedError;
  List<Songs> get searchedSongs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScreenSearchStateCopyWith<ScreenSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenSearchStateCopyWith<$Res> {
  factory $ScreenSearchStateCopyWith(
          ScreenSearchState value, $Res Function(ScreenSearchState) then) =
      _$ScreenSearchStateCopyWithImpl<$Res, ScreenSearchState>;
  @useResult
  $Res call({List<Songs> songs, List<Songs> searchedSongs});
}

/// @nodoc
class _$ScreenSearchStateCopyWithImpl<$Res, $Val extends ScreenSearchState>
    implements $ScreenSearchStateCopyWith<$Res> {
  _$ScreenSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songs = null,
    Object? searchedSongs = null,
  }) {
    return _then(_value.copyWith(
      songs: null == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
      searchedSongs: null == searchedSongs
          ? _value.searchedSongs
          : searchedSongs // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScreenSearchStateCopyWith<$Res>
    implements $ScreenSearchStateCopyWith<$Res> {
  factory _$$_ScreenSearchStateCopyWith(_$_ScreenSearchState value,
          $Res Function(_$_ScreenSearchState) then) =
      __$$_ScreenSearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Songs> songs, List<Songs> searchedSongs});
}

/// @nodoc
class __$$_ScreenSearchStateCopyWithImpl<$Res>
    extends _$ScreenSearchStateCopyWithImpl<$Res, _$_ScreenSearchState>
    implements _$$_ScreenSearchStateCopyWith<$Res> {
  __$$_ScreenSearchStateCopyWithImpl(
      _$_ScreenSearchState _value, $Res Function(_$_ScreenSearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songs = null,
    Object? searchedSongs = null,
  }) {
    return _then(_$_ScreenSearchState(
      songs: null == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
      searchedSongs: null == searchedSongs
          ? _value._searchedSongs
          : searchedSongs // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
    ));
  }
}

/// @nodoc

class _$_ScreenSearchState
    with DiagnosticableTreeMixin
    implements _ScreenSearchState {
  const _$_ScreenSearchState(
      {required final List<Songs> songs,
      required final List<Songs> searchedSongs})
      : _songs = songs,
        _searchedSongs = searchedSongs;

  final List<Songs> _songs;
  @override
  List<Songs> get songs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songs);
  }

  final List<Songs> _searchedSongs;
  @override
  List<Songs> get searchedSongs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedSongs);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScreenSearchState(songs: $songs, searchedSongs: $searchedSongs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScreenSearchState'))
      ..add(DiagnosticsProperty('songs', songs))
      ..add(DiagnosticsProperty('searchedSongs', searchedSongs));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenSearchState &&
            const DeepCollectionEquality().equals(other._songs, _songs) &&
            const DeepCollectionEquality()
                .equals(other._searchedSongs, _searchedSongs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_songs),
      const DeepCollectionEquality().hash(_searchedSongs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenSearchStateCopyWith<_$_ScreenSearchState> get copyWith =>
      __$$_ScreenSearchStateCopyWithImpl<_$_ScreenSearchState>(
          this, _$identity);
}

abstract class _ScreenSearchState implements ScreenSearchState {
  const factory _ScreenSearchState(
      {required final List<Songs> songs,
      required final List<Songs> searchedSongs}) = _$_ScreenSearchState;

  @override
  List<Songs> get songs;
  @override
  List<Songs> get searchedSongs;
  @override
  @JsonKey(ignore: true)
  _$$_ScreenSearchStateCopyWith<_$_ScreenSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
