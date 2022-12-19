part of 'screen_search_bloc.dart';

@freezed
class ScreenSearchEvent with _$ScreenSearchEvent {
  const factory ScreenSearchEvent.initialSearch() = InitialSearch;
  const factory ScreenSearchEvent.searchStudent({required String searchValue}) = SearchStudent;
}