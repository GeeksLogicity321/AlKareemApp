import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});
    static const routename = 'NotificationScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        title: Text('Notification',style: TextStyle(color: Colors.black),),),
        body: Column(children: [
          NotificationTile(title: 'General Notification',),
           NotificationTile(title: 'Sound',),
            NotificationTile(title: 'Vibrate',),
             NotificationTile(title: 'Special Offers',),
              NotificationTile(title: 'Promote & Discount',),
               NotificationTile(title: 'Payments',),
        ],),
    );
  }
}

class NotificationTile extends StatefulWidget {
  const NotificationTile({
    super.key,
    required this.title
  });
 final String title;
  @override
  State<NotificationTile> createState() => _NotificationTileState();
}

class _NotificationTileState extends State<NotificationTile> {
  bool _value = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(widget.title,style: TextStyle(color: Colors.black,fontSize: 13.sp),),
      Switch.adaptive(value: _value, onChanged: (value){
        _value = value;
        setState(() {});
      })],);
  }
}