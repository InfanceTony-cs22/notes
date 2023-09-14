import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PdfViewerPage extends StatefulWidget {
  final String pdfPath;

  PdfViewerPage({required this.pdfPath});

  @override
  _PdfViewerPageState createState() => _PdfViewerPageState();
}

class _PdfViewerPageState extends State<PdfViewerPage> {
  int currentPage = 1; // Initialize with the first page

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PDFView(
              filePath: widget.pdfPath,
              onPageChanged: (int? page, int? total) {
                if (page != null && total != null) {
                  setState(() {
                    currentPage = page;
                  });
                }
              },
              enableSwipe: true,
              swipeHorizontal: true,
              autoSpacing: false,
              pageFling: false,
              onError: (error) {
                print(error);
              },
            ),
          ),
          Text('Page $currentPage'), // Display the current page number
        ],
      ),
    );
  }
}
