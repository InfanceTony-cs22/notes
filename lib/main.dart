import 'package:flutter/material.dart';
import 'package:untitled/department_selection_page.dart';
import 'package:untitled/semester_selection_page.dart';
import 'package:untitled/subject_selection_page.dart';
import 'package:untitled/pdf_viewer_page.dart';

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
        '/departments': (context) => DepartmentSelectionPage(),
        '/semesters': (context) => SemesterSelectionPage(),
        '/subjects': (context) => SubjectSelectionPage(),
        '/pdf_viewer': (context) => PdfViewerPage(),
      },
    );
  }
}
