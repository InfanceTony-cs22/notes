import 'package:flutter/material.dart';

class SubjectSelectionPage extends StatelessWidget {
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
            Text('Choose a Subject:'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pdf_viewer');
              },
              child: Text('Subject 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pdf_viewer');
              },
              child: Text('Subject 2'),
            ),
            // Add buttons for other subjects
          ],
        ),
      ),
    );
  }
}
