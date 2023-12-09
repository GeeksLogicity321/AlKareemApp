import 'package:flutter/material.dart';

class HelpcenterScreen extends StatelessWidget {
  const HelpcenterScreen({super.key});
    static const routename = 'HelpcenterScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Fill Your Profile'),),
    );
  }
}