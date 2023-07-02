import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../constants/constant.dart';
import '../../models/note.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  int? noteColor;

  int? finalColor;

  addNote(Note note) async {
    int finalColor = noteColor ?? Colors.blue.value;
    note.color = finalColor;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<Note>(hiveBoxName);
      await notesBox.add(note);
      print(note.color);
      emit(AddNoteSuccess());
    } on Exception catch (e) {
      emit(AddNoteFailed(error: e.toString()));
    }
  }
}
