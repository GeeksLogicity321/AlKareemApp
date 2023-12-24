import 'package:flutter/material.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';

import '../Utills/SnackBars.dart';

class PdfDownloadButton extends StatefulWidget {
  PdfDownloadButton({super.key, required this.name, required this.url});
  final String url;
  final String? name;

  @override
  State<PdfDownloadButton> createState() => _PdfDownloadButtonState();
}

class _PdfDownloadButtonState extends State<PdfDownloadButton> {
  double? _progress;

  @override
  Widget build(BuildContext context) {
    return _progress != null
        ? CircularProgressIndicator()
        : IconButton(
            onPressed: () {
              FileDownloader.downloadFile(
                name: widget.name,
                url: widget.url.trim(),
                onProgress: (fileName, progress) {
                  setState(() {
                    _progress = progress;
                  });
                },
                onDownloadCompleted: (path) {
                  successSnackbar(context, 'File saved to $path');
                  setState(() {
                    _progress = null;
                  });
                },
                onDownloadError: (error) {
                  errorSnackbar(
                      context, 'Failed to download the file message : $error');
                  setState(() {
                    _progress = null;
                  });
                },
              );
            },
            icon: Icon(Icons.download));
  }
}
