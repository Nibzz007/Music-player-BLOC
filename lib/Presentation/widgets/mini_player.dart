import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:musica_player/Functions/recents.dart';
import 'package:musica_player/Domain/models/songs.dart';
import 'package:musica_player/Domain/palettes/color_palette.dart';
import 'package:musica_player/Presentation/screens/screen_now_playing.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:page_transition/page_transition.dart';
import 'package:text_scroll/text_scroll.dart';

class MiniPlayer extends StatefulWidget {
  const MiniPlayer({
    Key? key,
    required this.songList,
    required this.index,
    required this.audioPlayer,
  }) : super(key: key);

  final List<Songs> songList;
  final int index;
  final AssetsAudioPlayer audioPlayer;

  @override
  State<MiniPlayer> createState() => _MiniPlayerState();
}

class _MiniPlayerState extends State<MiniPlayer> {
  List<Audio> songAudio = [];

  Audio find(List<Audio> source, String fromPath) {
    return source.firstWhere((element) {
      return element.path == fromPath;
    });
  }

  void convertSongMode() {
    for (var song in widget.songList) {
      songAudio.add(
        Audio.file(
          song.uri,
          metas: Metas(
            id: song.id.toString(),
            title: song.title,
            artist: song.artist,
          ),
        ),
      );
    }
  }

  Future<void> openAudioPLayer() async {
    convertSongMode();

    await widget.audioPlayer.open(
      Playlist(
        audios: songAudio,
        startIndex: widget.index,
      ),
      autoStart: true,
      showNotification: true,
      loopMode: LoopMode.playlist,
      playInBackground: PlayInBackground.enabled,
    );
  }

  @override
  void initState() {
    openAudioPLayer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    openAudioPLayer();
    final screenHeight = MediaQuery.of(context).size.height;
    return widget.audioPlayer.builderCurrent(
      builder: (context, playing) {
        final myAudio = find(songAudio, playing.audio.assetAudioPath);
        Recents.addSongsToRecents(songId: myAudio.metas.id!);

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          // height: 75,
          height: screenHeight * 0.075,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            //mColor,
            // kBlue,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: kLightBlue,
              width: 1.5,
            ),
          ),
          child: Center(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      duration: const Duration(milliseconds: 300),
                      reverseDuration: const Duration(milliseconds: 300),
                      child: ScreenNowPlaying(
                        songList: songAudio,
                        index: widget.index,
                        id: myAudio.metas.id!,
                        audioPlayer: widget.audioPlayer,
                      ),
                      type: PageTransitionType.bottomToTop),
                );
              },
              contentPadding: EdgeInsets.zero,
              leading: QueryArtworkWidget(
                  artworkBorder: BorderRadius.circular(10),
                  id: int.parse(myAudio.metas.id!),
                  type: ArtworkType.AUDIO,
                  nullArtworkWidget: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/musicHome.png',
                      fit: BoxFit.cover,
                      height: 50,
                      width: 50,
                    ),
                  )),
              title: TextScroll(
                widget.audioPlayer.getCurrentAudioTitle,
                velocity: const Velocity(pixelsPerSecond: Offset(40, 0)),
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                      onTap: playing.index == 0
                          ? () {}
                          : () async {
                              await widget.audioPlayer.previous();
                            },
                      child: playing.index == 0
                          ? Icon(
                              Icons.skip_previous,
                              color: kWhiteOpacity,
                              size: 33,
                            )
                          : Icon(
                              Icons.skip_previous,
                              size: 33,
                              color: Theme.of(context).backgroundColor,
                            )),
                  const SizedBox(width: 15),
                  GestureDetector(
                    onTap: () async {
                      await widget.audioPlayer.playOrPause();
                    },
                    child: PlayerBuilder.isPlaying(
                        player: widget.audioPlayer,
                        builder: (context, isPlaying) {
                          return Icon(
                              isPlaying == true
                                  ? Icons.pause
                                  : Icons.play_arrow,
                              color: Theme.of(context).backgroundColor,
                              size: 33,
                              shadows: const [
                                Shadow(color: Colors.white, blurRadius: 10)
                              ]);
                        }),
                  ),
                  const SizedBox(width: 15),
                  GestureDetector(
                    onTap: playing.index == songAudio.length - 1
                        ? () {}
                        : () async {
                            await widget.audioPlayer.next();
                          },
                    child: playing.index == songAudio.length - 1
                        ? Icon(
                            Icons.skip_next,
                            color: kWhiteOpacity,
                            size: 33,
                          )
                        : Icon(
                            Icons.skip_next,
                            size: 33,
                            color: Theme.of(context).backgroundColor,
                          ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
