part of 'screen_navigation_bloc.dart';

@freezed
class ScreenNavigationEvent with _$ScreenNavigationEvent {
  const factory ScreenNavigationEvent.changePage({required int pressedPage}) = ChangePage;
  const factory ScreenNavigationEvent.checkNotification() = CheckNotification;
}