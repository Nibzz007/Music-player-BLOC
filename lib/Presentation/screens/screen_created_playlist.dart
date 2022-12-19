// ignore_for_file: use_build_context_synchronously

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musica_player/Presentation/alert_functions.dart';
import 'package:musica_player/Functions/playlist.dart';
import 'package:musica_player/Domain/models/db_functions/db_function.dart';
import 'package:musica_player/Domain/models/songs.dart';
import 'package:musica_player/Domain/palettes/color_palette.dart';
import 'package:musica_player/Presentation/widgets/search_widget.dart';
import 'package:musica_player/Presentation/widgets/song_list_tile.dart';

import '../../Applications/Screen_created_playlist/screen_created_playlist_bloc.dart';

class ScreenCreatedPlaylist extends StatelessWidget {
  ScreenCreatedPlaylist({super.key, required this.playlistName});
  final String playlistName;

  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer.withId('0');

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ScreenCreatedPlaylistBloc>(context).add(
      GetPlaylistSongs(playlistName: playlistName),
    );
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).backgroundColor,
          ),
          onPressed: () {
            // Get.back();
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:
            BlocBuilder<ScreenCreatedPlaylistBloc, ScreenCreatedPlaylistState>(
          builder: ((context, state) {
            return Text(
              state.playlistName,
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).backgroundColor,
              ),
            );
          }),
        ),
        actions: [
          BlocBuilder<ScreenCreatedPlaylistBloc, ScreenCreatedPlaylistState>(
              builder: ((context, state) {
            return IconButton(
              onPressed: () {
                showEditingPlaylistDialoge(
                  context: context,
                  playlistName: state.playlistName,
                  playlistSongs: state.playlistSongs,
                );
              },
              icon: Icon(
                Icons.edit,
                color: Theme.of(context).backgroundColor,
              ),
            );
          })),
          BlocBuilder<ScreenCreatedPlaylistBloc, ScreenCreatedPlaylistState>(
            builder: ((context, state) {
              return IconButton(
                onPressed: () {
                  showSongModalSheet(
                    context: context,
                    screenHeight: screenHeight,
                    playlistKey: state.playlistName,
                  );
                },
                icon: Icon(
                  Icons.add,
                  size: 27,
                  color: Theme.of(context).backgroundColor,
                ),
              );
            }),
          )
        ],
      ),
      body: BlocBuilder<ScreenCreatedPlaylistBloc, ScreenCreatedPlaylistState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
            child: state.playlistSongs.isEmpty
                ? const Center(
                    child: Text('No Songs Found'),
                  )
                : ListView.builder(
                    itemCount: state.playlistSongs.length,
                    itemBuilder: (ctx, index) {
                      return SongListTile(
                        icon: Icons.delete_outline_rounded,
                        onPressed: () {
                          UserPlaylist.deleteFromPlaylist(
                            context: context,
                            songId: state.playlistSongs[index].id,
                            playlistName: state.playlistName,
                          );
                        },
                        songList: state.playlistSongs,
                        index: index,
                        audioPlayer: audioPlayer,
                      );
                    },
                  ),
          );
        },
      ),
      // Padding(
      //   padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
      //   child: ValueListenableBuilder<Box<List<dynamic>>>(
      //     valueListenable: playlistBox.listenable(),
      //     builder: (context, boxSongList, _) {
      //       final List<Songs> songList =
      //           boxSongList.get(newPlaylistName)!.cast<Songs>();

      //       if (songList.isEmpty) {
      //         return const Center(
      //           child: Text('No Songs Found'),
      //         );
      //       }
      //       return ListView.builder(
      //         itemCount: songList.length,
      //         itemBuilder: (ctx, index) {
      //           return SongListTile(
      //               icon: Icons.delete_outline_rounded,
      //               onPressed: () {
      //                 UserPlaylist.deleteFromPlaylist(
      //                   context: context,
      //                   songId: songList[index].id,
      //                   playlistName: newPlaylistName!,
      //                 );
      //               },
      //               songList: songList,
      //               index: index,
      //               audioPlayer: audioPlayer);
      //         },
      //       );
      //     },
      //   ),
      // ),
    );
  }

  showEditingPlaylistDialoge({
    required BuildContext context,
    required String playlistName,
    required List<Songs> playlistSongs,
  }) {
    final TextEditingController textController =
        TextEditingController(text: playlistName);
    return showDialog(
        context: context,
        builder: (BuildContext ctx) {
          final formKey = GlobalKey<FormState>();
          return Form(
            key: formKey,
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              backgroundColor: kWhite,
              title: const Text(
                'Edit playlist',
                style: TextStyle(
                  color: kDarkBlue,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              content: SearchField(
                textController: textController,
                hintText: 'Playlist Name',
                icon: Icons.playlist_add,
                validator: (value) {
                  final keys = getPlaylistBox().keys.toList();
                  if (value == null || value.isEmpty) {
                    return 'Field is empty';
                  }
                  if (keys.contains(value)) {
                    return '$value already exist in playlist';
                  }
                  return null;
                },
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(ctx);
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: kDarkBlue, fontSize: 15),
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      //final playlistBox = getPlaylistBox();

                      final newPlaylistName = textController.text.trim();
                      BlocProvider.of<ScreenCreatedPlaylistBloc>(context).add(
                        RenamePlaylist(
                          newPlaylistName: newPlaylistName,
                          oldPlaylistName: playlistName,
                        ),
                      );

                      // await playlistBox.put(newPlaylistName, playlistSongs);
                      // playlistBox.delete(playlistName);
                      BlocProvider.of<ScreenCreatedPlaylistBloc>(context).add(
                        const GetPlaylistListNames(),
                      );

                      Navigator.pop(context);
                    }
                  },
                  child: const Text(
                    'Confirm',
                    style: TextStyle(color: kDarkBlue, fontSize: 15),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
