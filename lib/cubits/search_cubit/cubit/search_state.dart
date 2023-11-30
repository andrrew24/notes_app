part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchSuccess extends SearchState {
  final List<Note> foundNotes;

  SearchSuccess({required this.foundNotes});
}

final class SearchNoResult extends SearchState {}
