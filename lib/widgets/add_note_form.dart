import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_module_3/cubits/cubit/add_notes_cubit_cubit.dart';
import 'package:flutter_module_3/models/note_model.dart';
import 'package:flutter_module_3/widgets/colors_list_view.dart';
import 'package:flutter_module_3/widgets/custom_button.dart';
import 'package:flutter_module_3/widgets/custom_text_field.dart';
import 'package:intl/intl.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Titel',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            hint: 'content',
            maxLines: 5,
          ),
          ColorsListView(),
          SizedBox(
            height: 90,
          ),
          BlocBuilder<AddNotesCubitCubit, AddNotesCubitState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNotesCubitLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    // ignore: unused_local_variable
                    var currentDate = DateTime.now();
                    // ignore: unused_local_variable
                    var formattedCurrentDate = DateFormat.YEAR_ABBR_MONTH_DAY;
                    var noteModel = NoteModel(
                        title: title!,
                        subtitle: subtitle!,
                        date: formattedCurrentDate,
                        color: Colors.blue.value);
                    BlocProvider.of<AddNotesCubitCubit>(context)
                        .addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          )
        ],
      ),
    );
  }
}

