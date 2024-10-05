import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_module_3/cubits/cubit/add_notes_cubit_cubit.dart';
import 'package:flutter_module_3/cubits/cubit/notes_cubit.dart';
import 'package:flutter_module_3/widgets/add_note_form.dart';
// ignore: unused_import
import 'package:flutter_module_3/widgets/custom_button.dart';
// ignore: unused_import
import 'package:flutter_module_3/widgets/custom_text_field.dart';
// ignore: unused_import
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubitCubit(),
      child: BlocConsumer<AddNotesCubitCubit, AddNotesCubitState>(
        listener: (context, state) {
          if (state is AddNotesCubitFailure) {}
          
          if (state is AddNotesCubitFailure) {
            BlocProvider.of <NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return  AbsorbPointer(
            absorbing: state is AddNotesCubitLoading ? true : false,
            child: Padding(
                padding: EdgeInsets.only(left: 16,
                right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SingleChildScrollView(
                  child: AddNoteForm(),
                ),
              ),
          );
        },
      ),
    );
  }
}
