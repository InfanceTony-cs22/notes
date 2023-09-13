import 'package:flutter/material.dart';

class PdfViewerPage extends StatelessWidget {
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
            Text('PDF Viewer Page'),
            // Add code to display the PDF viewer here
          ],
        ),
      ),
    );
  }
}
