import 'dart:core';
import 'package:flutter/material.dart';
import '../Widgets/InstallmentBottomModelSheet.dart';
import '../Widgets/PenaltyBottomModelsheel.dart';

void showInstallmentCustomBottomSheet(
    {required BuildContext context,
    required String bank,
    String? plotNumber,
    int? amount,
    required String planId}) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return InstallmentBottomModelSheetWidget(
        bank: bank,
        amount: amount,
        planId: planId,
        plotNumber: plotNumber,
      );
    },
  );
}

void showPenaltyCustomBottomSheet({
  required BuildContext context,
  int? amount,
  required String penaltyId,
  required String bank,
}) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return PenaltyBottomModelSheetWidget(
        bank: bank,
        amount: amount,
        penaltyId: penaltyId,
      );
    },
  );
}
