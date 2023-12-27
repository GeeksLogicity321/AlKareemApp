class PlanIdModel {
  List<PlanId>? planId;

  PlanIdModel({this.planId});

  PlanIdModel.fromJson(Map<String, dynamic> json) {
    if (json['planId'] != null) {
      planId = <PlanId>[];
      json['planId'].forEach((v) {
        planId!.add(new PlanId.fromJson(v));
      });
    }
  }
}

class PlanId {
  String? sId;
  String? plotNumber;
  int? totalAmount;
  int? bookingAmount;
  int? instalmentAmount;
  int? investmentMonth;
  int? extraPaymentTerm;
  int? extraPaymentAmount;
  int? possessionAmount;
  PlotId? plotId;
  List<Payments>? payments;
  String? createdAt;
  String? updatedAt;
  int? iV;

  PlanId(
      {this.sId,
      this.plotNumber,
      this.totalAmount,
      this.bookingAmount,
      this.instalmentAmount,
      this.investmentMonth,
      this.extraPaymentTerm,
      this.extraPaymentAmount,
      this.possessionAmount,
      this.plotId,
      this.payments,
      this.createdAt,
      this.updatedAt,
      this.iV});

  PlanId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    plotNumber = json['plotNumber'];
    totalAmount = json['totalAmount'];
    bookingAmount = json['bookingAmount'];
    instalmentAmount = json['instalmentAmount'];
    investmentMonth = json['investmentMonth'];
    extraPaymentTerm = json['extraPaymentTerm'];
    extraPaymentAmount = json['extraPaymentAmount'];
    possessionAmount = json['possessionAmount'];
    plotId =
        json['plotId'] != null ? new PlotId.fromJson(json['plotId']) : null;
    if (json['payments'] != null) {
      payments = <Payments>[];
      json['payments'].forEach((v) {
        payments!.add(new Payments.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }
}

class PlotId {
  String? sId;
  String? plotNumber;
  BlockNumber? blockNumber;
  String? type;
  int? sqYard;
  int? price;
  String? details;
  String? createdAt;
  String? updatedAt;
  int? iV;

  PlotId(
      {this.sId,
      this.plotNumber,
      this.blockNumber,
      this.type,
      this.sqYard,
      this.price,
      this.details,
      this.createdAt,
      this.updatedAt,
      this.iV});

  PlotId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    plotNumber = json['plotNumber'];
    blockNumber = json['BlockNumber'] != null
        ? new BlockNumber.fromJson(json['BlockNumber'])
        : null;
    type = json['type'];
    sqYard = json['sqYard'];
    details = json['details'] ?? 'ponka';
    price = json['price'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }
}

class BlockNumber {
  String? sId;
  String? blockName;
  int? totalNumberOfPlot;
  int? plotStartNumber;
  int? plotEndNumber;
  String? createdAt;
  String? updatedAt;
  int? iV;

  BlockNumber(
      {this.sId,
      this.blockName,
      this.totalNumberOfPlot,
      this.plotStartNumber,
      this.plotEndNumber,
      this.createdAt,
      this.updatedAt,
      this.iV});

  BlockNumber.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    blockName = json['blockName'];
    totalNumberOfPlot = json['totalNumberOfPlot'];
    plotStartNumber = json['plotStartNumber'];
    plotEndNumber = json['plotEndNumber'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }
}

class Payments {
  int? installmentNumber;
  int? amount;
  String? dueDate;
  String? status;
  String? sId;

  Payments(
      {this.installmentNumber,
      this.amount,
      this.dueDate,
      this.status,
      this.sId});

  Payments.fromJson(Map<String, dynamic> json) {
    installmentNumber = json['installmentNumber'];
    amount = json['amount'];
    dueDate = json['dueDate'];
    status = json['status'];
    sId = json['_id'];
  }
}
