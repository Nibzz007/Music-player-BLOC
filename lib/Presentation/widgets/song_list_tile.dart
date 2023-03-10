import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:musica_player/Applications/Fav_recent_most/fav_recent_most_bloc.dart';
import 'package:musica_player/Presentation/alert_functions.dart';
import 'package:musica_player/Functions/favourites.dart';
import 'package:musica_player/Functions/recents.dart';
import 'package:musica_player/Domain/models/db_functions/db_function.dart';
import 'package:musica_player/Domain/models/songs.dart';
import 'package:on_audio_query/on_audio_query.dart';

class SongListTile extends StatefulWidget {
  const SongListTile({
    Key? key,
    this.icon = Icons.playlist_add,
    required this.onPressed,
    required this.songList,
    required this.index,
    required this.audioPlayer,
  }) : super(key: key);

  final IconData icon;
  final void Function()? onPressed;
  final int index;
  final AssetsAudioPlayer audioPlayer;
  final List<Songs> songList;

  @override
  State<SongListTile> createState() => _SongListTileState();
}

class _SongListTileState extends State<SongListTile> {
  Box<Songs> songBox = getSongBox();
  Box<List> playlistBox = getPlaylistBox();

  @override
  void initState() {
    super.initState();
    setState(() {
      Favourites.isThisFavourite(id: widget.songList[widget.index].id);
    });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Recents.addSongsToRecents(songId: widget.songList[widget.index].id);
        showMiniPlayer(
          context: context,
          index: widget.index,
          songList: widget.songList,
          audioPlayer: widget.audioPlayer,
        );
        setState(() {});
      },
      contentPadding: const EdgeInsets.all(0),
      leading: QueryArtworkWidget(
        artworkBorder: BorderRadius.circular(10),
        id: int.parse(widget.songList[widget.index].id),
        type: ArtworkType.AUDIO,
        nullArtworkWidget: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/images/musicHome.png',
            fit: BoxFit.cover,
            height: 50,
            width: 50,
          ),
        ),
      ),
      title: Text(
        widget.songList[widget.index].title,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        widget.songList[widget.index].artist == '<unknown>'
            ? 'Unknown'
            : widget.songList[widget.index].artist,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: const TextStyle(
          fontSize: 13,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            padding: const EdgeInsets.only(left: 0),
            onPressed: widget.onPressed,
            icon: Icon(
              widget.icon,
              color: Theme.of(context).backgroundColor,
              size: 27,
            ),
          ),
          BlocBuilder<FavRecentMostBloc, FavRecentMostState>(
            builder: (context, state) {
              return IconButton(
                onPressed: () {
                  Favourites.addSongToFavourites(
                    context: context,
                    id: widget.songList[widget.index].id,
                  );
                  BlocProvider.of<FavRecentMostBloc>(context).add(
                    const GetSongsList(),
                  );
                  BlocProvider.of<FavRecentMostBloc>(context).add(
                    const GetPlaylistLength(),
                  );
                },
                icon: Icon(
                  state.favSongList
                          .where((song) =>
                              song.id == widget.songList[widget.index].id)
                          .isEmpty
                      ? Icons.favorite_outline_rounded
                      : Icons.favorite_rounded,
                  color: Theme.of(context).backgroundColor,
                  size: 25,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
