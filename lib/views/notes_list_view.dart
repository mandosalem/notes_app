


import 'package:flutter/material.dart';
import 'package:flutter_module_3/views/notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context,index){
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: NotesItem(),
        );
      },
    );
  }
}