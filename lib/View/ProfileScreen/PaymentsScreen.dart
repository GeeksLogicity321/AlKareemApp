import 'package:flutter/material.dart';

class PaymentssScreen extends StatelessWidget {
  const PaymentssScreen({super.key});
    static const routename = 'PaymentssScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Fill Your Profile'),),
    );
  }
}