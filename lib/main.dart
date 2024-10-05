// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: unused_import
import 'package:flutter_module_3/cubits/cubit/add_notes_cubit_cubit.dart';
import 'package:flutter_module_3/cubits/cubit/notes_cubit.dart';
import 'package:flutter_module_3/models/note_model.dart';
import 'package:flutter_module_3/views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

const String kNotesBox = 'notes'; // تعريف اسم الصندوق

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // تأكد من تهيئة الواجهة
  await Hive.initFlutter(); // تهيئة Hive
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowMaterialGrid: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const NotesView(),
      ),
    );
  }
}
