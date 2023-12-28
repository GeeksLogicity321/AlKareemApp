import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:realestate/ViewModel/GalleryProvider.dart';
import 'package:sizer/sizer.dart';
import '../../Widgets/GalleryStoryWidget.dart';

class GalleryScreen extends StatelessWidget {
  GalleryScreen({super.key});
  static const routeName = "GalleryScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gallery'),
        ),
        body: Consumer<GalleryProvider>(builder: (_, galleryProvider, __) {
          return galleryProvider.isLoading
              ? Center(child: CircularProgressIndicator())
              : Padding(
                  padding: EdgeInsets.only(bottom: 3.h),
                  child: ListView.builder(
                    itemCount: galleryProvider.stories.length,
                    itemBuilder: (BuildContext context, int index) {
                      final currentIndexGallery =
                          galleryProvider.stories[index];
                      return GalleryStoryWidget(
                        currentIndexGallery: currentIndexGallery,
                      );
                    },
                  ),
                );
        }));
  }
}
