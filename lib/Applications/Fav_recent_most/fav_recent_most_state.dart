part of 'fav_recent_most_bloc.dart';

@freezed
class FavRecentMostState with _$FavRecentMostState {
  const factory FavRecentMostState({
    required List<Songs> favSongList,
    required List<Songs> recentList,
    required List<Songs> mostList,
    required int favSongListlength,
    required int recentListLength,
    required int mostListLength,
  }) = _Initial;

  factory FavRecentMostState.initial() {
    Box<List> playlistBox = getPlaylistBox();
    return FavRecentMostState(
      favSongList: playlistBox.get('Favourites')!.toList().cast<Songs>(),
      recentList: playlistBox.get('Recent')!.toList().cast<Songs>(),
      mostList: playlistBox.get('Most Played')!.toList().cast<Songs>(),
      favSongListlength: playlistBox.get('Favourites')!.toList().length,
      mostListLength: playlistBox.get('Most Played')!.toList().length,
      recentListLength: playlistBox.get('Recent')!.toList().length,
    );
  }
}