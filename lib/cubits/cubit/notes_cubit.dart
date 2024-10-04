import 'package:bloc/bloc.dart';
import 'package:flutter_module_3/models/note_model.dart';
import 'package:flutter_module_3/widgets/constants.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes()async{
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      
      emit(NotesSuccess(notesBox.values.toList(),));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }

  
}
