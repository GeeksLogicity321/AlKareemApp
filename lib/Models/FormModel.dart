class FormModel {
  String? name;
  String? fileUrl;

  FormModel({this.name, this.fileUrl});

  FormModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    fileUrl = json['file'];
  }
}
