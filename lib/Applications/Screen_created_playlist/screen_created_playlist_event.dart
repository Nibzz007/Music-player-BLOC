part of 'screen_created_playlist_bloc.dart';

@freezed
class ScreenCreatedPlaylistEvent with _$ScreenCreatedPlaylistEvent {
  const factory ScreenCreatedPlaylistEvent.renamePlaylist({
    required String newPlaylistName,
    required String oldPlaylistName,
  }) = RenamePlaylist;

  const factory ScreenCreatedPlaylistEvent.getPlaylistSongs({
    required String playlistName,
  }) = GetPlaylistSongs;

  const factory ScreenCreatedPlaylistEvent.getPlaylistListNames() =
      GetPlaylistListNames;
}