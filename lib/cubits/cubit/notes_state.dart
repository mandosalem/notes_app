
part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoaded extends NotesState {
  final List<NoteModel>? notes;

  NotesLoaded(this.notes);
}

class NotesError extends NotesState {
  final String message;

  NotesError(this.message);
}
