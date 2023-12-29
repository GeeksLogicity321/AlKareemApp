class PenaltyModel {
  String? sId;
  int? amount;
  String? userId;
  String? reason;
  String? date;
  bool? paid;

  PenaltyModel(
      {this.sId, this.amount, this.userId, this.reason, this.date, this.paid});

  PenaltyModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    amount = json['amount'];
    userId = json['userId'];
    reason = json['reason'];
    date = json['date'];
    paid = json['paid'];
  }
  }