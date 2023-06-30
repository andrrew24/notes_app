import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note.dart';

import '../../constants/constant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<Note>? notes;

  getNotes() {
    var notesBox = Hive.box<Note>(hiveBoxName);
     notes = notesBox.values.toList();
  }
}
