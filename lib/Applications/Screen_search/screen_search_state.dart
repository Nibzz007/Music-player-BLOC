part of 'screen_search_bloc.dart';

@freezed
class ScreenSearchState with _$ScreenSearchState {
  const factory ScreenSearchState(
      {required List<Songs> songs,
      required List<Songs> searchedSongs}) = _ScreenSearchState;

  factory ScreenSearchState.initial() {
    return const ScreenSearchState(
      songs: [],
      searchedSongs: [],
    );
  }
}
