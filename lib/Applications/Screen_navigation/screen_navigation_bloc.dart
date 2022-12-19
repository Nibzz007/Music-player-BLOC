import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:musica_player/Presentation/screens/screen_navigation.dart';
import 'package:musica_player/Presentation/screens/screen_setting.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'screen_navigation_event.dart';
part 'screen_navigation_state.dart';
part 'screen_navigation_bloc.freezed.dart';

class ScreenNavigationBloc
    extends Bloc<ScreenNavigationEvent, ScreenNavigationState> {
  ScreenNavigationBloc() : super(ScreenNavigationState.initial()) {
    on<ChangePage>((event, emit) {
      emit(
        ScreenNavigationState(page: event.pressedPage),
      );
    });

    on<CheckNotification>(((event, emit) async{
      SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
      SWITCHVALUE = sharedPrefs.getBool(NOTIFICATION);
      SWITCHVALUE = SWITCHVALUE ??= true;
    }));
  }
}
