import 'package:flutter/material.dart';

class SemesterSelectionPage extends StatelessWidget {
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
            Text('Choose a Semester:'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/subjects');
              },
              child: Text('Semester 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/subjects');
              },
              child: Text('Semester 2'),
            ),
            // Add buttons for other semesters
          ],
        ),
      ),
    );
  }
}
