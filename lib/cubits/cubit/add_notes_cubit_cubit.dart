import 'package:bloc/bloc.dart';
import 'package:flutter_module_3/models/note_model.dart';
import 'package:flutter_module_3/widgets/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

part 'add_notes_cubit_state.dart';

class AddNotesCubitCubit extends Cubit<AddNotesCubitState> {
  AddNotesCubitCubit() : super(AddNotesCubitInitial());

  addNote(NoteModel note) async {
    emit(AddNotesCubitLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNotesCubitSuccess());
    } catch (e) {
      emit(AddNotesCubitFailure(e.toString()));
    }
  }
}
