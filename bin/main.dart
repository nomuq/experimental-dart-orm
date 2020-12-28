import 'dart:mirrors';

import 'package:experimental_dart_orm/annotations/Column.dart';
import 'package:experimental_dart_orm/annotations/Entity.dart';

@Entity()
class User {
  @Column()
  String name;

  @Column(primary: true)
  int id;
}

void main(List<String> arguments) {
  var c = User();
  print(reflect(c).type.metadata.first.reflectee);
  print(reflectClass(User).metadata.first.reflectee.name);

  var instance_mirror = reflect(c);
  var class_mirror = instance_mirror.type;

  for (var v in class_mirror.declarations.values) {
    var name = MirrorSystem.getName(v.simpleName);

    if (v is VariableMirror) {
      print((v.metadata.first.reflectee as Column).readonly);

      print(
          'Variable: $name => S: ${v.isStatic}, P: ${v.isPrivate}, F: ${v.isFinal}, C: ${v.isConst}, type: ${v.type}');
    } else if (v is MethodMirror) {
      print(
          'Method: $name => S: ${v.isStatic}, P: ${v.isPrivate}, A: ${v.isAbstract}');
    }
  }
}
