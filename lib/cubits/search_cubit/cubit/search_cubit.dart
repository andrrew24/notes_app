import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants/constant.dart';
import 'package:notes_app/models/note.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  List<Note>? allNotes;

  void getNotes() {
    var notesBox = Hive.box<Note>(hiveBoxName);
    allNotes = notesBox.values.toList();
  }

  void searchNote(String keyWord) {
    getNotes();
    List<Note> result = [];
    if (keyWord.isEmpty) {
      result = allNotes!;
    } else {
      result = allNotes!
          .where((note) =>
              note.title.toLowerCase().contains(keyWord.toLowerCase()))
          .toList();
    }

    if (result.isEmpty) {
      emit(SearchNoResult());
    } else {
      emit(SearchSuccess(foundNotes: result));
    }
  }
}
