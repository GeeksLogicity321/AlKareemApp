import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:realestate/ViewModel/CatagoryProvider.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../Widgets/FormCatagoryTileWeidget.dart';

class FormsScreen extends StatelessWidget {
  const FormsScreen({super.key});
  static const routeName = "FormsScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Catagory',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Consumer<CatagoryProvider>(builder: (_, catagoryProvider, __) {
          return catagoryProvider.isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: catagoryProvider.catagory.length,
                  itemBuilder: (context, index) {
                    return FormCatagoryWeidget(
                        id: catagoryProvider.catagory[index].sId!,
                        title: catagoryProvider.catagory[index].name!);
                  });
        }));
  }
}

class FormsScreen2 extends StatelessWidget {
  const FormsScreen2({super.key});
  static const routeName = "FormsScreen2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Forms',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Consumer<CatagoryProvider>(builder: (_, catagoryProvider, __) {
          return catagoryProvider.isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: catagoryProvider.getForm.length,
                  itemBuilder: (context, index) {
                    return FormTileWeidget(
                        fileLink: catagoryProvider.getForm[index].fileUrl!,
                        title: catagoryProvider.getForm[index].name!);
                  });
        }));
  }
}

class FormsScreen3 extends StatelessWidget {
  FormsScreen3({super.key, required this.fileLink});
  static const routeName = "FormsScreen3";

  String fileLink;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Forms',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
          child: SfPdfViewer.network(fileLink),
        ));
  }
}
