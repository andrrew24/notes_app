import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note.dart';

import '../../constants/constant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  getNotes() {
    try {
      var notesBox = Hive.box<Note>(hiveBoxName);
      List<Note> notes = notesBox.values.toList();
      emit(NotesSuccess(notes: notes));
    } on Exception catch (e) {
      emit(NotesFail(errName: e.toString()));
    }
  }
}
