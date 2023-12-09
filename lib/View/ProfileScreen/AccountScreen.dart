import 'package:flutter/material.dart';
import 'package:realestate/constants/constants.dart';
import 'package:sizer/sizer.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});
  static const routename = 'AccountScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        title: const Text(
          'My Rent',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, AccountScreen.routename);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AccountScreen()),
                  );
                },
                child: Image.asset('Assets/Group 43.png')),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: TextFormField(
                style: TextStyle(fontSize: 10.sp),
                decoration: InputDecoration().copyWith(
                  labelText: 'Username',
                  hintText: 'Muhammad Kareem',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: TextFormField(
                style: TextStyle(fontSize: 10.sp),
                decoration: InputDecoration().copyWith(
                  labelText: 'Date',
                  hintText: '10/03/1235',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: TextFormField(
                style: TextStyle(fontSize: 10.sp),
                decoration: InputDecoration().copyWith(
                  labelText: 'Email',
                  hintText: ' Idcusdvj@gmail.com',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: TextFormField(
                style: TextStyle(fontSize: 10.sp),
                decoration: InputDecoration().copyWith(
                  labelText: 'Number',
                  hintText: '+2347062045243',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: GenderField(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: SelectCountryForm(),
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
              width: 80.w,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Update'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GenderField extends StatefulWidget {
  GenderField({
    super.key,
  });

  @override
  State<GenderField> createState() => _GenderFieldState();
}

class _GenderFieldState extends State<GenderField> {
  String selectedGender = 'select your gender';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      height: 5.h,
      decoration: BoxDecoration(
          color: KformfieldColor, borderRadius: BorderRadius.circular(2.w)),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            selectedGender,
            style: TextStyle(color: Colors.grey),
          ),
          IconButton(
              onPressed: () {
                DropdownButton<String>(
                  value: selectedGender,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedGender = newValue ?? 'select your gender';
                    });
                  },
                  items: <String>[
                    'select your gender',
                    'Male',
                    'Female',
                    'Other'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                );
              },
              icon: Icon(Icons.arrow_drop_down_circle_outlined))
        ],
      ),
    );
  }
}

class SelectCountryForm extends StatefulWidget {
  SelectCountryForm({
    super.key,
  });

  @override
  State<SelectCountryForm> createState() => _SelectCountryFormState();
}

class _SelectCountryFormState extends State<SelectCountryForm> {
  String selectedGender = 'select your Country';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      height: 5.h,
      decoration: BoxDecoration(
          color: KformfieldColor, borderRadius: BorderRadius.circular(2.w)),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            selectedGender,
            style: TextStyle(color: Colors.grey),
          ),
          IconButton(
              onPressed: () {
                DropdownButton<String>(
                  value: selectedGender,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedGender = newValue ?? 'select your Country';
                    });
                  },
                  items: <String>[
                    'select your Country',
                    'Male',
                    'Female',
                    'Other'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                );
              },
              icon: Icon(Icons.arrow_drop_down_circle_outlined))
        ],
      ),
    );
  }
}
