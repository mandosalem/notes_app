import 'package:flutter/material.dart';
import 'package:flutter_module_3/views/edit_note_view_body.dart';
// ignore: unused_import
import 'package:flutter_module_3/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteViewBody(title: 'Edit Note',

      ),
    );
  }
}
