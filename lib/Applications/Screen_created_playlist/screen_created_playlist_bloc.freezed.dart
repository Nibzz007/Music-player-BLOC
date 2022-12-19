// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'screen_created_playlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScreenCreatedPlaylistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newPlaylistName, String oldPlaylistName)
        renamePlaylist,
    required TResult Function(String playlistName) getPlaylistSongs,
    required TResult Function() getPlaylistListNames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newPlaylistName, String oldPlaylistName)?
        renamePlaylist,
    TResult? Function(String playlistName)? getPlaylistSongs,
    TResult? Function()? getPlaylistListNames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newPlaylistName, String oldPlaylistName)?
        renamePlaylist,
    TResult Function(String playlistName)? getPlaylistSongs,
    TResult Function()? getPlaylistListNames,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RenamePlaylist value) renamePlaylist,
    required TResult Function(GetPlaylistSongs value) getPlaylistSongs,
    required TResult Function(GetPlaylistListNames value) getPlaylistListNames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RenamePlaylist value)? renamePlaylist,
    TResult? Function(GetPlaylistSongs value)? getPlaylistSongs,
    TResult? Function(GetPlaylistListNames value)? getPlaylistListNames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RenamePlaylist value)? renamePlaylist,
    TResult Function(GetPlaylistSongs value)? getPlaylistSongs,
    TResult Function(GetPlaylistListNames value)? getPlaylistListNames,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenCreatedPlaylistEventCopyWith<$Res> {
  factory $ScreenCreatedPlaylistEventCopyWith(ScreenCreatedPlaylistEvent value,
          $Res Function(ScreenCreatedPlaylistEvent) then) =
      _$ScreenCreatedPlaylistEventCopyWithImpl<$Res,
          ScreenCreatedPlaylistEvent>;
}

/// @nodoc
class _$ScreenCreatedPlaylistEventCopyWithImpl<$Res,
        $Val extends ScreenCreatedPlaylistEvent>
    implements $ScreenCreatedPlaylistEventCopyWith<$Res> {
  _$ScreenCreatedPlaylistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RenamePlaylistCopyWith<$Res> {
  factory _$$RenamePlaylistCopyWith(
          _$RenamePlaylist value, $Res Function(_$RenamePlaylist) then) =
      __$$RenamePlaylistCopyWithImpl<$Res>;
  @useResult
  $Res call({String newPlaylistName, String oldPlaylistName});
}

/// @nodoc
class __$$RenamePlaylistCopyWithImpl<$Res>
    extends _$ScreenCreatedPlaylistEventCopyWithImpl<$Res, _$RenamePlaylist>
    implements _$$RenamePlaylistCopyWith<$Res> {
  __$$RenamePlaylistCopyWithImpl(
      _$RenamePlaylist _value, $Res Function(_$RenamePlaylist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPlaylistName = null,
    Object? oldPlaylistName = null,
  }) {
    return _then(_$RenamePlaylist(
      newPlaylistName: null == newPlaylistName
          ? _value.newPlaylistName
          : newPlaylistName // ignore: cast_nullable_to_non_nullable
              as String,
      oldPlaylistName: null == oldPlaylistName
          ? _value.oldPlaylistName
          : oldPlaylistName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RenamePlaylist implements RenamePlaylist {
  const _$RenamePlaylist(
      {required this.newPlaylistName, required this.oldPlaylistName});

  @override
  final String newPlaylistName;
  @override
  final String oldPlaylistName;

  @override
  String toString() {
    return 'ScreenCreatedPlaylistEvent.renamePlaylist(newPlaylistName: $newPlaylistName, oldPlaylistName: $oldPlaylistName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RenamePlaylist &&
            (identical(other.newPlaylistName, newPlaylistName) ||
                other.newPlaylistName == newPlaylistName) &&
            (identical(other.oldPlaylistName, oldPlaylistName) ||
                other.oldPlaylistName == oldPlaylistName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, newPlaylistName, oldPlaylistName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RenamePlaylistCopyWith<_$RenamePlaylist> get copyWith =>
      __$$RenamePlaylistCopyWithImpl<_$RenamePlaylist>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newPlaylistName, String oldPlaylistName)
        renamePlaylist,
    required TResult Function(String playlistName) getPlaylistSongs,
    required TResult Function() getPlaylistListNames,
  }) {
    return renamePlaylist(newPlaylistName, oldPlaylistName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newPlaylistName, String oldPlaylistName)?
        renamePlaylist,
    TResult? Function(String playlistName)? getPlaylistSongs,
    TResult? Function()? getPlaylistListNames,
  }) {
    return renamePlaylist?.call(newPlaylistName, oldPlaylistName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newPlaylistName, String oldPlaylistName)?
        renamePlaylist,
    TResult Function(String playlistName)? getPlaylistSongs,
    TResult Function()? getPlaylistListNames,
    required TResult orElse(),
  }) {
    if (renamePlaylist != null) {
      return renamePlaylist(newPlaylistName, oldPlaylistName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RenamePlaylist value) renamePlaylist,
    required TResult Function(GetPlaylistSongs value) getPlaylistSongs,
    required TResult Function(GetPlaylistListNames value) getPlaylistListNames,
  }) {
    return renamePlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RenamePlaylist value)? renamePlaylist,
    TResult? Function(GetPlaylistSongs value)? getPlaylistSongs,
    TResult? Function(GetPlaylistListNames value)? getPlaylistListNames,
  }) {
    return renamePlaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RenamePlaylist value)? renamePlaylist,
    TResult Function(GetPlaylistSongs value)? getPlaylistSongs,
    TResult Function(GetPlaylistListNames value)? getPlaylistListNames,
    required TResult orElse(),
  }) {
    if (renamePlaylist != null) {
      return renamePlaylist(this);
    }
    return orElse();
  }
}

abstract class RenamePlaylist implements ScreenCreatedPlaylistEvent {
  const factory RenamePlaylist(
      {required final String newPlaylistName,
      required final String oldPlaylistName}) = _$RenamePlaylist;

  String get newPlaylistName;
  String get oldPlaylistName;
  @JsonKey(ignore: true)
  _$$RenamePlaylistCopyWith<_$RenamePlaylist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPlaylistSongsCopyWith<$Res> {
  factory _$$GetPlaylistSongsCopyWith(
          _$GetPlaylistSongs value, $Res Function(_$GetPlaylistSongs) then) =
      __$$GetPlaylistSongsCopyWithImpl<$Res>;
  @useResult
  $Res call({String playlistName});
}

/// @nodoc
class __$$GetPlaylistSongsCopyWithImpl<$Res>
    extends _$ScreenCreatedPlaylistEventCopyWithImpl<$Res, _$GetPlaylistSongs>
    implements _$$GetPlaylistSongsCopyWith<$Res> {
  __$$GetPlaylistSongsCopyWithImpl(
      _$GetPlaylistSongs _value, $Res Function(_$GetPlaylistSongs) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistName = null,
  }) {
    return _then(_$GetPlaylistSongs(
      playlistName: null == playlistName
          ? _value.playlistName
          : playlistName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPlaylistSongs implements GetPlaylistSongs {
  const _$GetPlaylistSongs({required this.playlistName});

  @override
  final String playlistName;

  @override
  String toString() {
    return 'ScreenCreatedPlaylistEvent.getPlaylistSongs(playlistName: $playlistName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlaylistSongs &&
            (identical(other.playlistName, playlistName) ||
                other.playlistName == playlistName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playlistName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPlaylistSongsCopyWith<_$GetPlaylistSongs> get copyWith =>
      __$$GetPlaylistSongsCopyWithImpl<_$GetPlaylistSongs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newPlaylistName, String oldPlaylistName)
        renamePlaylist,
    required TResult Function(String playlistName) getPlaylistSongs,
    required TResult Function() getPlaylistListNames,
  }) {
    return getPlaylistSongs(playlistName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newPlaylistName, String oldPlaylistName)?
        renamePlaylist,
    TResult? Function(String playlistName)? getPlaylistSongs,
    TResult? Function()? getPlaylistListNames,
  }) {
    return getPlaylistSongs?.call(playlistName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newPlaylistName, String oldPlaylistName)?
        renamePlaylist,
    TResult Function(String playlistName)? getPlaylistSongs,
    TResult Function()? getPlaylistListNames,
    required TResult orElse(),
  }) {
    if (getPlaylistSongs != null) {
      return getPlaylistSongs(playlistName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RenamePlaylist value) renamePlaylist,
    required TResult Function(GetPlaylistSongs value) getPlaylistSongs,
    required TResult Function(GetPlaylistListNames value) getPlaylistListNames,
  }) {
    return getPlaylistSongs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RenamePlaylist value)? renamePlaylist,
    TResult? Function(GetPlaylistSongs value)? getPlaylistSongs,
    TResult? Function(GetPlaylistListNames value)? getPlaylistListNames,
  }) {
    return getPlaylistSongs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RenamePlaylist value)? renamePlaylist,
    TResult Function(GetPlaylistSongs value)? getPlaylistSongs,
    TResult Function(GetPlaylistListNames value)? getPlaylistListNames,
    required TResult orElse(),
  }) {
    if (getPlaylistSongs != null) {
      return getPlaylistSongs(this);
    }
    return orElse();
  }
}

abstract class GetPlaylistSongs implements ScreenCreatedPlaylistEvent {
  const factory GetPlaylistSongs({required final String playlistName}) =
      _$GetPlaylistSongs;

  String get playlistName;
  @JsonKey(ignore: true)
  _$$GetPlaylistSongsCopyWith<_$GetPlaylistSongs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPlaylistListNamesCopyWith<$Res> {
  factory _$$GetPlaylistListNamesCopyWith(_$GetPlaylistListNames value,
          $Res Function(_$GetPlaylistListNames) then) =
      __$$GetPlaylistListNamesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPlaylistListNamesCopyWithImpl<$Res>
    extends _$ScreenCreatedPlaylistEventCopyWithImpl<$Res,
        _$GetPlaylistListNames>
    implements _$$GetPlaylistListNamesCopyWith<$Res> {
  __$$GetPlaylistListNamesCopyWithImpl(_$GetPlaylistListNames _value,
      $Res Function(_$GetPlaylistListNames) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPlaylistListNames implements GetPlaylistListNames {
  const _$GetPlaylistListNames();

  @override
  String toString() {
    return 'ScreenCreatedPlaylistEvent.getPlaylistListNames()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPlaylistListNames);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newPlaylistName, String oldPlaylistName)
        renamePlaylist,
    required TResult Function(String playlistName) getPlaylistSongs,
    required TResult Function() getPlaylistListNames,
  }) {
    return getPlaylistListNames();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newPlaylistName, String oldPlaylistName)?
        renamePlaylist,
    TResult? Function(String playlistName)? getPlaylistSongs,
    TResult? Function()? getPlaylistListNames,
  }) {
    return getPlaylistListNames?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newPlaylistName, String oldPlaylistName)?
        renamePlaylist,
    TResult Function(String playlistName)? getPlaylistSongs,
    TResult Function()? getPlaylistListNames,
    required TResult orElse(),
  }) {
    if (getPlaylistListNames != null) {
      return getPlaylistListNames();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RenamePlaylist value) renamePlaylist,
    required TResult Function(GetPlaylistSongs value) getPlaylistSongs,
    required TResult Function(GetPlaylistListNames value) getPlaylistListNames,
  }) {
    return getPlaylistListNames(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RenamePlaylist value)? renamePlaylist,
    TResult? Function(GetPlaylistSongs value)? getPlaylistSongs,
    TResult? Function(GetPlaylistListNames value)? getPlaylistListNames,
  }) {
    return getPlaylistListNames?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RenamePlaylist value)? renamePlaylist,
    TResult Function(GetPlaylistSongs value)? getPlaylistSongs,
    TResult Function(GetPlaylistListNames value)? getPlaylistListNames,
    required TResult orElse(),
  }) {
    if (getPlaylistListNames != null) {
      return getPlaylistListNames(this);
    }
    return orElse();
  }
}

abstract class GetPlaylistListNames implements ScreenCreatedPlaylistEvent {
  const factory GetPlaylistListNames() = _$GetPlaylistListNames;
}

/// @nodoc
mixin _$ScreenCreatedPlaylistState {
  String get playlistName => throw _privateConstructorUsedError;
  List<Songs> get playlistSongs => throw _privateConstructorUsedError;
  List<dynamic> get playlistListNames => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScreenCreatedPlaylistStateCopyWith<ScreenCreatedPlaylistState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenCreatedPlaylistStateCopyWith<$Res> {
  factory $ScreenCreatedPlaylistStateCopyWith(ScreenCreatedPlaylistState value,
          $Res Function(ScreenCreatedPlaylistState) then) =
      _$ScreenCreatedPlaylistStateCopyWithImpl<$Res,
          ScreenCreatedPlaylistState>;
  @useResult
  $Res call(
      {String playlistName,
      List<Songs> playlistSongs,
      List<dynamic> playlistListNames});
}

/// @nodoc
class _$ScreenCreatedPlaylistStateCopyWithImpl<$Res,
        $Val extends ScreenCreatedPlaylistState>
    implements $ScreenCreatedPlaylistStateCopyWith<$Res> {
  _$ScreenCreatedPlaylistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistName = null,
    Object? playlistSongs = null,
    Object? playlistListNames = null,
  }) {
    return _then(_value.copyWith(
      playlistName: null == playlistName
          ? _value.playlistName
          : playlistName // ignore: cast_nullable_to_non_nullable
              as String,
      playlistSongs: null == playlistSongs
          ? _value.playlistSongs
          : playlistSongs // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
      playlistListNames: null == playlistListNames
          ? _value.playlistListNames
          : playlistListNames // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScreenCreatedPlaylistStateCopyWith<$Res>
    implements $ScreenCreatedPlaylistStateCopyWith<$Res> {
  factory _$$_ScreenCreatedPlaylistStateCopyWith(
          _$_ScreenCreatedPlaylistState value,
          $Res Function(_$_ScreenCreatedPlaylistState) then) =
      __$$_ScreenCreatedPlaylistStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String playlistName,
      List<Songs> playlistSongs,
      List<dynamic> playlistListNames});
}

/// @nodoc
class __$$_ScreenCreatedPlaylistStateCopyWithImpl<$Res>
    extends _$ScreenCreatedPlaylistStateCopyWithImpl<$Res,
        _$_ScreenCreatedPlaylistState>
    implements _$$_ScreenCreatedPlaylistStateCopyWith<$Res> {
  __$$_ScreenCreatedPlaylistStateCopyWithImpl(
      _$_ScreenCreatedPlaylistState _value,
      $Res Function(_$_ScreenCreatedPlaylistState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistName = null,
    Object? playlistSongs = null,
    Object? playlistListNames = null,
  }) {
    return _then(_$_ScreenCreatedPlaylistState(
      playlistName: null == playlistName
          ? _value.playlistName
          : playlistName // ignore: cast_nullable_to_non_nullable
              as String,
      playlistSongs: null == playlistSongs
          ? _value._playlistSongs
          : playlistSongs // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
      playlistListNames: null == playlistListNames
          ? _value._playlistListNames
          : playlistListNames // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_ScreenCreatedPlaylistState implements _ScreenCreatedPlaylistState {
  const _$_ScreenCreatedPlaylistState(
      {required this.playlistName,
      required final List<Songs> playlistSongs,
      required final List<dynamic> playlistListNames})
      : _playlistSongs = playlistSongs,
        _playlistListNames = playlistListNames;

  @override
  final String playlistName;
  final List<Songs> _playlistSongs;
  @override
  List<Songs> get playlistSongs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlistSongs);
  }

  final List<dynamic> _playlistListNames;
  @override
  List<dynamic> get playlistListNames {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlistListNames);
  }

  @override
  String toString() {
    return 'ScreenCreatedPlaylistState(playlistName: $playlistName, playlistSongs: $playlistSongs, playlistListNames: $playlistListNames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenCreatedPlaylistState &&
            (identical(other.playlistName, playlistName) ||
                other.playlistName == playlistName) &&
            const DeepCollectionEquality()
                .equals(other._playlistSongs, _playlistSongs) &&
            const DeepCollectionEquality()
                .equals(other._playlistListNames, _playlistListNames));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      playlistName,
      const DeepCollectionEquality().hash(_playlistSongs),
      const DeepCollectionEquality().hash(_playlistListNames));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenCreatedPlaylistStateCopyWith<_$_ScreenCreatedPlaylistState>
      get copyWith => __$$_ScreenCreatedPlaylistStateCopyWithImpl<
          _$_ScreenCreatedPlaylistState>(this, _$identity);
}

abstract class _ScreenCreatedPlaylistState
    implements ScreenCreatedPlaylistState {
  const factory _ScreenCreatedPlaylistState(
          {required final String playlistName,
          required final List<Songs> playlistSongs,
          required final List<dynamic> playlistListNames}) =
      _$_ScreenCreatedPlaylistState;

  @override
  String get playlistName;
  @override
  List<Songs> get playlistSongs;
  @override
  List<dynamic> get playlistListNames;
  @override
  @JsonKey(ignore: true)
  _$$_ScreenCreatedPlaylistStateCopyWith<_$_ScreenCreatedPlaylistState>
      get copyWith => throw _privateConstructorUsedError;
}
