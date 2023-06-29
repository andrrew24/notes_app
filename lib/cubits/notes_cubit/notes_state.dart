part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesSuccess extends NotesState {
  final List<Note> notes;

  NotesSuccess({required this.notes});
}

class NotesFail extends NotesState {
  final String errName;

  NotesFail({required this.errName});
}
