import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';


import '../../constants/constant.dart';
import '../../models/note.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  int? noteColor;

  addNote(Note note) async {
    note.color = noteColor!;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<Note>(hiveBoxName);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } on Exception catch (e) {
      emit(AddNoteFailed(error: e.toString()));
    }
  }
}
