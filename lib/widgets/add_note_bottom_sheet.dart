import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_module_3/cubits/cubit/add_notes_cubit_cubit.dart';
import 'package:flutter_module_3/widgets/add_note_form.dart';
// ignore: unused_import
import 'package:flutter_module_3/widgets/custom_button.dart';
// ignore: unused_import
import 'package:flutter_module_3/widgets/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: BlocConsumer<AddNotesCubitCubit, AddNotesCubitState>(
        listener: (context, state) {
          if (state is AddNotesCubitFailure) {
            print('failied ${state.errMessage}');
          }
          if (state is AddNotesCubitFailure) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is AddNotesCubitLoading ? true : false,
            child: SingleChildScrollView(
              child: AddNoteForm(),
            ),
          );
        },
      ),
    );
  }
}
