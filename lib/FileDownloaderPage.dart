import 'package:flutter/material.dart';
import 'models.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'package:url_launcher/url_launcher.dart';

class FileDownloaderPage extends StatelessWidget {
  final Subject subject;

  FileDownloaderPage({required this.subject});

  Future<void> _downloadFile(BuildContext context) async {
    print('Downloading file...');
    final response = await http.get(Uri.parse(subject.link));

    final appDirectory = await getDownloadsDirectory();
    if (appDirectory != null) {
      final fileExtension = path.extension(subject.link);
      final filePath = '${appDirectory.path}/${subject.name}$fileExtension';

      final file = File(filePath);
      await file.writeAsBytes(response.bodyBytes);

      print('File downloaded successfully!');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('File downloaded successfully!'),
        ),
      );
    } else {
      print('Error getting Downloads Directory');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error getting Downloads Directory'),
        ),
      );
    }
  }


  Future<void> _launchURL(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw 'Could not launch $link';
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
            Text(
              'File: ${subject.name}',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () async {
                await _downloadFile(context);
                await _launchURL(subject.link);
              },
              child: Text('Download File'),
            ),
          ],
        ),
      ),
    );
  }
}
