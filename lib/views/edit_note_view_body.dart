

import 'package:flutter/material.dart';
import 'package:flutter_module_3/widgets/custom_app_bar.dart';
import 'package:flutter_module_3/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
      children: [
        SizedBox(height: 50,),
        CustomAppBar(title: 'Edit Note', icon:Icons.check ,
        ),
        SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: 'Titel',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'content',
              maxLines: 5,
            ),
      ],
      ),
    );
  }
}