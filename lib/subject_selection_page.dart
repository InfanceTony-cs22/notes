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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Added spaceEvenly
        children: [
          SizedBox(height: 120), // Added space above "Choose a Subject" text
          Text(
            'Choose a Subject:',
            style: TextStyle(fontSize: 30), // Increased font size
          ),
          SizedBox(height: 60), // Added space below "Choose a Subject" text
          Expanded(
            child: ListView.builder(
              itemCount: semester.subjects.length,
              itemBuilder: (context, index) {
                Subject subject = semester.subjects[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      title: Text(
                        subject.name,
                        style: TextStyle(fontSize: 20),
                      ),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FileDownloaderPage(subject: subject),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
