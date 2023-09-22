import 'package:flutter/material.dart';
import 'models.dart';
import 'FileDownloaderPage.dart';

class SubjectSelectionPage extends StatelessWidget {
  final Semester semester;

  SubjectSelectionPage({required this.semester});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 180),
          Text(
            'Choose a Subject:',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 120),
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
