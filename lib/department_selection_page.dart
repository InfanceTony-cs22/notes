import 'package:flutter/material.dart';
import 'semester_selection_page.dart';
import 'models.dart';

class DepartmentSelectionPage extends StatelessWidget {
  final List<Department> departments;

  DepartmentSelectionPage({required this.departments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Department'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Choose a Department:',
              style: TextStyle(fontSize: 20),
            ),
            Column(
              children: departments.map((department) {
                return ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SemesterSelectionPage(department: department),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    child: Text(department.name),
                    alignment: Alignment.center,
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
