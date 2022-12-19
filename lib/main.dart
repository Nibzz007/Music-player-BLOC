import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:musica_player/Applications/Fav_recent_most/fav_recent_most_bloc.dart';
import 'package:musica_player/Applications/Screeen_setting/screen_setting_bloc.dart';
import 'package:musica_player/Applications/Screen_created_playlist/screen_created_playlist_bloc.dart';
import 'package:musica_player/Applications/Screen_home/screen_home_bloc.dart';
import 'package:musica_player/Applications/Screen_navigation/screen_navigation_bloc.dart';
import 'package:musica_player/Applications/Screen_search/screen_search_bloc.dart';
import 'package:musica_player/Domain/class/themes.dart';
import 'package:musica_player/Domain/models/songs.dart';
import 'package:musica_player/Presentation/screens/screen_splash.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(0)) {
    Hive.registerAdapter(SongsAdapter());
  }
  await Hive.openBox<Songs>("Songs");
  await Hive.openBox<List>("Playlist");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ScreenNavigationBloc()),
        BlocProvider(create: (context) => ScreenHomeBloc()),
        BlocProvider(create: (context) => ScreenSettingBloc()),
        BlocProvider(create: (context) => ScreenSearchBloc()),
        BlocProvider(create: (context) => ScreenCreatedPlaylistBloc()),
        BlocProvider(create: (context) => FavRecentMostBloc()),
      ],
      child: ChangeNotifierProvider(
          create: ((context) => ThemeProvider()),
          builder: (context, child) {
            final themeProvider = Provider.of<ThemeProvider>(context);

            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: MyThemes.lightTheme,
              darkTheme: MyThemes.darkTheme,
              themeMode: themeProvider.themeMode,
              home: const ScreenSplash(),
            );
          }),
    );
  }
}
