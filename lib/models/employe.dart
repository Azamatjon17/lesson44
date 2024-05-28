import 'package:json_annotation/json_annotation.dart';

part "employe.g.dart";

@JsonSerializable()
class Employe {
  String name;
  int age;
  String position;
  List<String> skills;
  Employe({required this.name, required this.age, required this.position, required this.skills});

  factory Employe.fromjson(Map<String, dynamic> json) {
    return _$EmployeFromJson(json);
  }
  tojeson() {
    return _$Employetojeson(this);
  }
}
