part of 'screen_navigation_bloc.dart';

@freezed
class ScreenNavigationState with _$ScreenNavigationState {
  const factory ScreenNavigationState({required int page}) = _ScreenNavigationState;
  factory ScreenNavigationState.initial() {
    return const ScreenNavigationState(page: 0);
  }

}
