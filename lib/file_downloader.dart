import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class PdfViewerPage extends StatelessWidget {
  final String downloadLink;
  final String fileName;

  PdfViewerPage({required this.downloadLink, required this.fileName});

  Future<void> _downloadFile() async {
    final appDirectory = await getDownloadsDirectory();
    final filePath = '${appDirectory?.path}/$fileName';

    final response = await http.get(Uri.parse(downloadLink));

    if (response.statusCode == 200) {
      final file = File(filePath);
      await file.writeAsBytes(response.bodyBytes);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('File Downloader'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await _downloadFile();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('File downloaded successfully!'),
                  ),
                );
              },
              child: Text('Download File'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PdfViewerPage(
      downloadLink: 'https://toastmasterscdn.azureedge.net/medias/files/clubcentral/club-meeting-roles/675e-timer-script-and-log.zip', // Replace with your download link
      fileName: 'sample.pdf', // Replace with the desired file name
    ),
  ));
}
