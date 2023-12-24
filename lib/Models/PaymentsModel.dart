class PaymentsModel {
  String? sId;
  String? plotNumber;
  FirstPendingPayment? firstPendingPayment;
  String? message;

  PaymentsModel({this.sId, this.plotNumber, this.firstPendingPayment});

  PaymentsModel.fromJson(Map<String, dynamic> json) {
    if (json['_id'] != null) {
      sId = json['_id'];
      plotNumber = json['plotNumber'];
      firstPendingPayment = json['firstPendingPayment'] != null
          ? FirstPendingPayment.fromJson(json['firstPendingPayment'])
          : null;
    } else {
      plotNumber = json['plotNumber'];
      message = json['message'];
    }
  }
}

class FirstPendingPayment {
  int? installmentNumber;
  int? amount;
  String? dueDate;

  FirstPendingPayment({this.installmentNumber, this.amount, this.dueDate});

  FirstPendingPayment.fromJson(Map<String, dynamic> json) {
    installmentNumber = json['installmentNumber'];
    amount = json['amount'];
    dueDate = json['dueDate'];
  }
}
