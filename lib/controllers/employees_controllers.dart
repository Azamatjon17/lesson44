import 'package:lesson44/models/employe.dart';

class EmployeesControllers {
  Map json = {
    "company": "Tech Solutions",
    "location": "San Francisco",
    "employees": [
      {
        "name": "Alice",
        "age": 30,
        "position": "Developer",
        "skills": ["Dart", "Flutter", "Firebase"]
      },
      {
        "name": "Bob",
        "age": 25,
        "position": "Designer",
        "skills": ["Photoshop", "Illustrator"]
      },
      {
        "name": "Alice",
        "age": 30,
        "position": "Developer",
        "skills": ["Dart", "Flutter", "Firebase"]
      },
      {
        "name": "Bob",
        "age": 25,
        "position": "Designer",
        "skills": ["Photoshop", "Illustrator"]
      },
      {
        "name": "Alice",
        "age": 30,
        "position": "Developer",
        "skills": ["Dart", "Flutter", "Firebase"]
      },
      {
        "name": "Bob",
        "age": 25,
        "position": "Designer",
        "skills": ["Photoshop", "Illustrator"]
      },
      {
        "name": "Alice",
        "age": 30,
        "position": "Developer",
        "skills": ["Dart", "Flutter", "Firebase"]
      },
      {
        "name": "Bob",
        "age": 25,
        "position": "Designer",
        "skills": ["Photoshop", "Illustrator"]
      },
      {
        "name": "Alice",
        "age": 30,
        "position": "Developer",
        "skills": ["Dart", "Flutter", "Firebase"]
      },
      {
        "name": "Bob",
        "age": 25,
        "position": "Designer",
        "skills": ["Photoshop", "Illustrator"]
      },
      {
        "name": "Alice",
        "age": 30,
        "position": "Developer",
        "skills": ["Dart", "Flutter", "Firebase"]
      },
      {
        "name": "Bob",
        "age": 25,
        "position": "Designer",
        "skills": ["Photoshop", "Illustrator"]
      },
      {
        "name": "Alice",
        "age": 30,
        "position": "Developer",
        "skills": ["Dart", "Flutter", "Firebase"]
      },
      {
        "name": "Bob",
        "age": 25,
        "position": "Designer",
        "skills": ["Photoshop", "Illustrator"]
      }
    ],
    "products": [
      {"name": "Product A", "price": 29.99, "inStock": true},
      {"name": "Product B", "price": 49.99, "inStock": false}
    ]
  };
  List<Employe> _list = [];
  List<Employe> get list => [..._list];

  getemployees() {
    List<Map<String, dynamic>> data = json['employees'];
    for (Map<String, dynamic> i in data) {
      _list.add(Employe.fromjson(i));
    }
  }

  addemployees({required String name, required int age, required String position, required List<String> skills}) {
    _list.add(Employe(name: name, age: age, position: position, skills: skills));
  }
}
