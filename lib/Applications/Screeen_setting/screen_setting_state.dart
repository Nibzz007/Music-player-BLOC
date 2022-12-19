part of 'screen_setting_bloc.dart';

@freezed
class ScreenSettingState with _$ScreenSettingState {
  const factory ScreenSettingState({
    required bool value,
  }) = _ScreenSettingState;

  factory ScreenSettingState.initial() {
    return ScreenSettingState(value: SWITCHVALUE!);
  }
}
