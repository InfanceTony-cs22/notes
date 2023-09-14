import 'package:flutter/material.dart';
import 'department_selection_page.dart';
import 'models.dart';
import 'sample_data.dart';

void main() {
  runApp(StudyMaterialsApp());
}

class StudyMaterialsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Materials App',
      initialRoute: '/departments',
      routes: {
        '/departments': (context) => DepartmentSelectionPage(departments: departments),
      },
    );
  }
}
