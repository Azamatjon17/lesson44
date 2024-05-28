part of 'employe.dart';

Employe _$EmployeFromJson(Map<String, dynamic> json) => Employe(
      name: json['name'] as String,
      age: json['age'] as int,
      position: json['position'] as String,
      skills: (json['skills'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$Employetojeson(Employe employe) => <String, dynamic>{"name": employe.name, "age": employe.age, "position": employe.position, "skills": employe.skills};
