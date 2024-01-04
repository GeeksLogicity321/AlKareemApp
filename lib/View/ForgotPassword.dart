import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:realestate/ViewModel/AuthProvider.dart';
import 'package:sizer/sizer.dart';

import '../Utills/SnackBars.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  final _uniqueIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('Assets/LoginBackground.png'))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: 4.h,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    TextFormField(
                      onChanged: (value) {
                        context.read<LoginProvider>().setUniqueId(value);
                      },
                      controller: _uniqueIdController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter an id';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 10.sp),
                      decoration: InputDecoration().copyWith(
                        labelText: 'Unique Id',
                        hintText: 'Unique Id',
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Consumer<LoginProvider>(
                          builder: (_, loginProvider, __) {
                        return ElevatedButton(
                          onPressed: () async {
                            _formKey.currentState!.validate()
                                ? loginProvider.getForgetPasswordUser(context)
                                : errorSnackbar(context, 'Please enter ID');
                          },
                          child: loginProvider.isLoading
                              ? CircularProgressIndicator()
                              : Text('Get Password'),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
