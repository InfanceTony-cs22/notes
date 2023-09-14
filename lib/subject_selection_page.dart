import 'package:flutter/material.dart';
import 'pdf_viewer_page.dart';
import 'models.dart';

class SubjectSelectionPage extends StatelessWidget {
  final Semester semester;

  SubjectSelectionPage({required this.semester});

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
                    // Navigate to the PDF viewer page with the selected subject's PDF path
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PdfViewerPage(pdfPath: subject.pdfPath),
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
