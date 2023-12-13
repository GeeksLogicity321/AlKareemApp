class UserModel {
  String? sId;
  String? name;
  String? uniqueId;
  String? hashPassword;
  // List<Null>? plotId;
  bool? paymentOnThatMonth;
  String? createdAt;
  String? updatedAt;
  int? iV;

  UserModel(
      {this.sId,
      this.name,
      this.uniqueId,
      this.hashPassword,
      // this.plotId,
      this.paymentOnThatMonth,
      this.createdAt,
      this.updatedAt,
      this.iV});

  UserModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    uniqueId = json['uniqueId'];
    hashPassword = json['hash_password'];
    // if (json['plotId'] != null) {
    //   plotId = <Null>[];
    //   json['plotId'].forEach((v) {
    //     plotId!.add(new Null.fromJson(v));
    //   });
    // }
    paymentOnThatMonth = json['paymentOnThatMonth'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['uniqueId'] = this.uniqueId;
    data['hash_password'] = this.hashPassword;
    // if (this.plotId != null) {
    //   data['plotId'] = this.plotId!.map((v) => v.toJson()).toList();
    // }
    data['paymentOnThatMonth'] = this.paymentOnThatMonth;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
