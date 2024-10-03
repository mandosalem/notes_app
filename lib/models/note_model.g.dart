
import 'package:flutter_module_3/models/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

// ignore: unused_import
import 'note_model.g.dart';

class NoteModelAdapter extends TypeAdapter<NoteModel> {
  @override
  final int typeId = 0;
  @override
  NoteModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final Map<int, dynamic> fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NoteModel(
      title: fields[0] as String,
      subtitle: fields[1] as String,
      date: fields[2] as String,
      color: fields[3] as int,
    );
  }
  

@override
void write(BinaryWriter writer, NoteModel obj) {
  writer.writeByte(4);
  writer.write(obj.title);
  writer.write(obj.subtitle);
  writer.write(obj.date);
  writer.write(obj.color);
}
}


