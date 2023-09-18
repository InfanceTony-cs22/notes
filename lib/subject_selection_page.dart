import 'package:flutter/material.dart';
import 'models.dart';
import 'FileDownloaderPage.dart';

class SubjectSelectionPage extends StatelessWidget {
  final Semester semester;
  final List<Department> departments;

  SubjectSelectionPage({required this.semester, required this.departments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Subject'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Choose a Subject:',
              style: TextStyle(fontSize: 20),
            ),
            Column(
              children: semester.subjects.map((subject) {
                return ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FileDownloaderPage(subject: subject),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    child: Text(subject.name),
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
