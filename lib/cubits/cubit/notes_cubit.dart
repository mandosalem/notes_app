// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter_module_3/models/note_model.dart';
import 'package:flutter_module_3/widgets/constants.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;

  // دالة لجلب جميع الملاحظات
  fetchAllNotes() async {
    var notesBox = Hive.box<NoteModel>(kNotesBox); // فتح الصندوق
    notes = notesBox.values.toList(); // جلب القيم من الصندوق
    emit(NotesLoaded(notes)); // إرسال الحالة المحملة
  }
}

