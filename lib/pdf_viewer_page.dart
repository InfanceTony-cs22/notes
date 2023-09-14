import 'package:flutter/material.dart';
import 'models.dart';
import 'package:url_launcher/url_launcher.dart';


class PdfViewerPage extends StatelessWidget {
  final Subject subject;

  PdfViewerPage({required this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Subject: ${subject.name}',
              style: TextStyle(fontSize: 20),
            ),
        ElevatedButton(
          onPressed: () async {
            // Check if the URL is valid before launching
            if (await canLaunch(subject.link)) {
              await launch(subject.link);
            } else {
              // Handle the case where the URL cannot be launched
              // For example, show an error message or log the issue
              print('Could not launch ${subject.link}');
            }
          },
          child: Text('Download PDF'),
        ),
          ],
        ),
      ),
    );
  }
}
