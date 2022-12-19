part of 'screen_home_bloc.dart';

@freezed
class ScreenHomeState with _$ScreenHomeState {
  const factory ScreenHomeState({required List<Songs> songList}) = _ScreenHomeState;

  factory ScreenHomeState.initial() {
    Box<Songs> songBox = getSongBox();
    
    return ScreenHomeState(songList: songBox.values.toList());
  }
}
