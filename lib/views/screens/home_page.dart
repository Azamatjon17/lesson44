import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lesson44/controllers/employees_controllers.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  EmployeesControllers employeesControllers = EmployeesControllers();
  @override
  void initState() {
    employeesControllers.getemployees();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          padding: const EdgeInsets.all(25),
          children: [
            for (var i = 0; i < employeesControllers.list.length; i++)
              ListTile(
                leading: Text("Age\n${employeesControllers.list[i].age}"),
                title: Text(employeesControllers.list[i].name),
                subtitle: Text("${employeesControllers.list[i].skills}"),
                trailing: Text(employeesControllers.list[i].position),
              )
          ],
        ),
      ),
    );
  }
}
