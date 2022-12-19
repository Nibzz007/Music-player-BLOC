import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../Domain/models/db_functions/db_function.dart';
import '../../Domain/models/songs.dart';

part 'screen_created_playlist_event.dart';
part 'screen_created_playlist_state.dart';
part 'screen_created_playlist_bloc.freezed.dart';

class ScreenCreatedPlaylistBloc extends Bloc<ScreenCreatedPlaylistEvent, ScreenCreatedPlaylistState> {
  ScreenCreatedPlaylistBloc() : super(ScreenCreatedPlaylistState.initial()) {
    Box<List> playlistBox = getPlaylistBox();
    on<RenamePlaylist>((event, emit) async {
      List<Songs> _playlistBoxSongs =
          playlistBox.get(state.playlistName)!.toList().cast<Songs>();
      await playlistBox.put(event.newPlaylistName, _playlistBoxSongs);
      await playlistBox.delete(event.oldPlaylistName);
      emit(ScreenCreatedPlaylistState(
          playlistName: event.newPlaylistName,
          playlistSongs: _playlistBoxSongs,
          playlistListNames: state.playlistListNames));
    });

    on<GetPlaylistSongs>((event, emit) {
      List<Songs> _playlistBoxSongs =
          playlistBox.get(event.playlistName)!.toList().cast<Songs>();
      emit(
        ScreenCreatedPlaylistState(
          playlistName: event.playlistName,
          playlistSongs: _playlistBoxSongs,
          playlistListNames: state.playlistListNames,
        ),
      );
    });

    on<GetPlaylistListNames>((event, emit) {
      final List<dynamic> keys = playlistBox.keys.toList();
      keys.removeWhere((key) => key == 'Favourites');
      keys.removeWhere((key) => key == 'Recent');
      keys.removeWhere((key) => key == 'Most Played');
      emit(
        ScreenCreatedPlaylistState(
          playlistName: state.playlistName,
          playlistSongs: state.playlistSongs,
          playlistListNames: keys,
        ),
      );
    });
  }
}
