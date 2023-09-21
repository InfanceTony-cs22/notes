import 'package:flutter/material.dart';
import 'models.dart';
import 'subject_selection_page.dart';

class SemesterSelectionPage extends StatelessWidget {
  final Department department;

  SemesterSelectionPage({required this.department});

  @override
  Widget build(BuildContext context) {
    final List<Semester> semesters = department.semesters;

    return Scaffold(
      appBar: AppBar(
        title: Text('Select Semester'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 120),
          Text(
            'Semester:',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 120),
          Expanded(
            child: ListView.builder(
              itemCount: semesters.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      title: Text(
                        'Semester ${semesters[index].number}',
                        style: TextStyle(fontSize: 20),
                      ),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SubjectSelectionPage(
                              semester: semesters[index],
                            ),
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
