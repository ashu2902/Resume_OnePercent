import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

class PreviewCardTemplate extends StatefulWidget {
  final pdf;
  final name;

  PreviewCardTemplate(this.pdf, this.name);

  @override
  _PreviewCardTemplateState createState() => _PreviewCardTemplateState();
}

class _PreviewCardTemplateState extends State<PreviewCardTemplate> {
  bool isPathAvailable = false;
  var path;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft]);
    super.initState();

    savePdf();
  }

  Future savePdf() async {
    Directory? dir = await getApplicationDocumentsDirectory();
    String documentPath = dir.path;
    File file = File("$documentPath/${widget.name}.pdf");
    file.writeAsBytesSync(await widget.pdf.save());
    setState(() {
      path = file.path;
      print('path ' + path);
      isPathAvailable = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Card Template'),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {

            Directory? dirs = await getExternalStorageDirectory();
            File files = File("${dirs!.path}/${widget.name}.pdf");
            files.writeAsBytesSync(await widget.pdf.save());
            print(dirs.path);
          },
          label: Text('Save')),
      body: Container(
        child: isPathAvailable
            ? PdfViewer.openFile(
                path,
                params: PdfViewerParams(pageNumber: 1),
              )
            : Center(
                child: Text('Loading'),
              ),
      ),
    );
  }
}
