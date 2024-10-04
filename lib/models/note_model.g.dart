
import 'package:flutter_module_3/models/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

// ignore: unused_import
import 'note_model.g.dart';

class NoteModelAdapter extends TypeAdapter<NoteModel> {
  @override
  final int typeId = 0;

  @override
  NoteModel read(BinaryReader reader) {
    // قراءة عدد الحقول
    final numOfFields = reader.readByte();
    
    // التحقق من أن هناك بايتات كافية
    if (reader.availableBytes < numOfFields * 2) {
      // التحقق بشكل دقيق من أن كل حقل يحتوي على بايت واحد للمفتاح وبايت واحد للقيمة
      throw RangeError('Not enough bytes available to read all fields.');
    }

    // قراءة الحقول
    final Map<int, dynamic> fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    // إنشاء نموذج NoteModel باستخدام الحقول المقروءة
    return NoteModel(
      title: fields[0] as String,
      subtitle: fields[1] as String,
      date: fields[2] as String,
      color: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, NoteModel obj) {
    // كتابة عدد الحقول
    writer.writeByte(4);
    
    // كتابة القيم
    writer.write(obj.title);
    writer.write(obj.subtitle);
    writer.write(obj.date);
    writer.write(obj.color);
  }
}



