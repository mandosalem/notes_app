// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_module_3/cubits/cubit/add_notes_cubit_cubit.dart';
import 'package:flutter_module_3/views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  // تهيئة Hive
  await Hive.initFlutter();

  // فتح الصندوق
  var box = await Hive.openBox('notesBox');

  // الآن يمكنك استخدام الصندوق
  runApp(NotesApp());
}



class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNotesCubitCubit()),
      ],
      child: MaterialApp(
        debugShowMaterialGrid: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const NotesView(),
      ),
    );
  }
}
