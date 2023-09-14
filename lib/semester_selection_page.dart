import 'package:flutter/material.dart';
import 'subject_selection_page.dart';
import 'models.dart';

class SemesterSelectionPage extends StatelessWidget {
  final Department department;

  SemesterSelectionPage({required this.department});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Semester'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Choose a Semester:',
              style: TextStyle(fontSize: 20),
            ),
            Column(
              children: department.semesters.map((semester) {
                return ElevatedButton(
                  onPressed: () {
                    // Navigate to the subject selection page with the selected semester
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SubjectSelectionPage(semester: semester),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    child: Text('Semester ${semester.number}'),
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
