import 'package:flutter/material.dart';
import 'package:flutter_module_3/widgets/add_note_bottom_sheet.dart';
import 'package:flutter_module_3/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context){
            return const AddNoteBottomSheet();
          });
        },
        child: const Icon(Icons.add,),),
      
      body: const NotesViewBody(),
    );
  }
}


