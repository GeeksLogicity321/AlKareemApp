class CatagoryModel {
  String? sId;
  String? name;

  CatagoryModel({this.sId, this.name});

  CatagoryModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
  }
}
