part of 'screen_created_playlist_bloc.dart';

@freezed
class ScreenCreatedPlaylistState with _$ScreenCreatedPlaylistState {
  const factory ScreenCreatedPlaylistState({
    required String playlistName,
    required List<Songs> playlistSongs,
    required List playlistListNames,
  }) = _ScreenCreatedPlaylistState;

  factory ScreenCreatedPlaylistState.initial() {
    Box<List> playlistBox = getPlaylistBox();
    final List<dynamic> keys = playlistBox.keys.toList();
    keys.removeWhere((key) => key == 'Favourites');
    keys.removeWhere((key) => key == 'Recent');
    keys.removeWhere((key) => key == 'Most Played');
    return ScreenCreatedPlaylistState(
      playlistName: '',
      playlistSongs: [],
      playlistListNames: keys,
    );
  }
}
