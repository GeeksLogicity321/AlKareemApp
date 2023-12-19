class PlotModel {
  String? sId;
  String? plotNumber;
  String? blockNumber;
  String? type;
  int? sqYard;
  int? price;
  String? createdAt;
  String? updatedAt;
  int? iV;

  PlotModel(
      {this.sId,
      this.plotNumber,
      this.blockNumber,
      this.type,
      this.sqYard,
      this.price,
      this.createdAt,
      this.updatedAt,
      this.iV});

  PlotModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    plotNumber = json['plotNumber'];
    blockNumber = json['BlockNumber'];
    type = json['type'];
    sqYard = json['sqYard'];
    price = json['price'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['plotNumber'] = this.plotNumber;
    data['BlockNumber'] = this.blockNumber;
    data['type'] = this.type;
    data['sqYard'] = this.sqYard;
    data['price'] = this.price;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
