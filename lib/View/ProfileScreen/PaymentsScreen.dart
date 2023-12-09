import 'package:flutter/material.dart';
import 'package:realestate/constants/constants.dart';
import 'package:sizer/sizer.dart';

class PaymentssScreen extends StatelessWidget {
   const PaymentssScreen({super.key});
    static const routename = 'PaymentssScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.white,
       iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        title: Text('Payment',style: TextStyle(color: Colors.black),),),

        body: Column(children: [
          SizedBox(height: 20.h),
          ListTile(
            onTap: (){},
            leading: Image.asset('Assets/EasyPaisaImage.png'),
        title: Text('EasyPaisa',style: TextStyle(fontSize: 13.sp),),
        trailing: Text('Connected',style: TextStyle(color: kPrimaryColor),),),
        SizedBox(height: 30.h,),
        SizedBox(
              width: 80.w,
              child: ElevatedButton(
                onPressed: () {
                  
                },
                child: Text('Add New Account'),
              ),
            ),
        

        
        ],),
    );
  }
}