import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../constants/constant.dart';
import '../../models/note.dart';

part 'add_note_state.dart';
 
class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(Note note) async {
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
