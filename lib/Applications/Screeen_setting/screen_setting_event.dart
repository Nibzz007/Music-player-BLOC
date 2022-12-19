part of 'screen_setting_bloc.dart';

@freezed
class ScreenSettingEvent with _$ScreenSettingEvent {
  const factory ScreenSettingEvent.getNotification({required bool newValue}) =
      GetNotification;
}
