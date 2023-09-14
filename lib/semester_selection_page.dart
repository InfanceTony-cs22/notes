import 'package:flutter/material.dart';
import 'models.dart';
import 'subject_selection_page.dart';

class SemesterSelectionPage extends StatelessWidget {
  final Department department;
  final List<Department> departments;

  SemesterSelectionPage({required this.department, required this.departments});

  @override
  Widget build(BuildContext context) {
    final List<Semester> semesters = department.semesters;

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
              children: List.generate(semesters.length, (index) {
                return ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            SubjectSelectionPage(semester: semesters[index], departments: departments),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    child: Text('Semester ${semesters[index].number}'),
                    alignment: Alignment.center,
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
