import 'package:bloc/bloc.dart';
import 'package:flutter_module_3/models/note_model.dart';
import 'package:meta/meta.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
}
