import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:musica_player/Presentation/screens/screen_navigation.dart';
import 'package:musica_player/Presentation/screens/screen_setting.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'screen_setting_event.dart';
part 'screen_setting_state.dart';
part 'screen_setting_bloc.freezed.dart';

class ScreenSettingBloc extends Bloc<ScreenSettingEvent, ScreenSettingState> {
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer.withId('0');

  ScreenSettingBloc() : super(ScreenSettingState.initial()) {
    on<GetNotification>((event, emit) async {
      SWITCHVALUE = event.newValue;
      SWITCHVALUE!
          ? audioPlayer.showNotification = true
          : audioPlayer.showNotification = false;

      SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
      await sharedPrefs.setBool(NOTIFICATION, SWITCHVALUE!);
      emit(ScreenSettingState(value: SWITCHVALUE!));
    });
  }
}
