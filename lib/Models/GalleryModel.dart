class GalleryModel {
  String? title;
  List<String>? pics;

  GalleryModel({this.title, this.pics});

  GalleryModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    pics = json['pics'].cast<String>();
  }
}
