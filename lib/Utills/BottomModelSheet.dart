import 'dart:core';
import 'package:flutter/material.dart';
import '../Widgets/BottomModelSheet.dart';

void showCustomBottomSheet(
    {required BuildContext context,
    String? plotNumber,
    int? amount,
    required String planId}) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return BottomModelSheetWidget(
        amount: amount,
        planId: planId,
        plotNumber: plotNumber,
      );
    },
  );
}
