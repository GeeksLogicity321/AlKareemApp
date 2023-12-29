import 'dart:core';
import 'package:flutter/material.dart';
import '../Widgets/InstallmentBottomModelSheet.dart';
import '../Widgets/PenaltyBottomModelsheel.dart';

void showInstallmentCustomBottomSheet(
    {required BuildContext context,
    String? plotNumber,
    int? amount,
    required String planId}) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return InstallmentBottomModelSheetWidget(
        amount: amount,
        planId: planId,
        plotNumber: plotNumber,
      );
    },
  );
}
void showPenaltyCustomBottomSheet(
    {required BuildContext context,
    int? amount,
    required String penaltyId}) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return PenaltyBottomModelSheetWidget(
        amount: amount,
        penaltyId: penaltyId,
        
      );
    },
  );
}
