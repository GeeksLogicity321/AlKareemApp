import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:http/http.dart' as http;
import '../../Utills/SnackBars.dart';
import '../../ViewModel/AuthProvider.dart';

import '../../constants/ApiConstants.dart';

class AccountScreen extends StatefulWidget {
  AccountScreen({super.key});
  static const routename = 'AccountScreen';

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  File? _image;

  Future getImageFromGallery() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future takePhoto() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _uploadImage() async {
    if (_image != null) {
      // Map<String, String> headers = {'Content-Type': 'application/json'};
      var request = http.MultipartRequest(
        'POST',
        Uri.parse(ApiConstants.uploadPic),
      );

      request.files.add(
        await http.MultipartFile.fromPath(
          'attachArtwork',
          _image!.path,
        ),
      );

      request.headers['Authorization'] =
          'Bearer ${context.read<LoginProvider>().userObject.token}';

      try {
        var response = await request.send();
        if (response.statusCode == 200) {
          var responseBody = await response.stream.bytesToString();
          Map<String, dynamic> jsondecode = jsonDecode(responseBody);
          context
              .read<LoginProvider>()
              .setUserImage(jsondecode['data']['profile_pic']);
          successSnackbar(context, 'Image uploaded successfully');
        } else {
          errorSnackbar(context,
              'Failed to upload image. Status code: ${response.statusCode}');
        }
      } catch (error) {
        errorSnackbar(context, 'Error uploading image: $error');
      }
    }
  }

  Widget imageToShow() {
    if (_image == null &&
        context.read<LoginProvider>().userObject.data!.profilePic == null) {
      return Icon(
        Icons.camera_alt,
        size: 10.w,
        color: Colors.black,
      );
    } else if (_image != null) {
      return ClipOval(
        child: Image.file(
          _image!,
          width: 40.w,
          height: 40.w,
          fit: BoxFit.cover,
        ),
      );
    } else {
      return ClipOval(
        child: Image.network(
          context.read<LoginProvider>().userObject.data!.profilePic!,
          width: 40.w,
          height: 40.w,
          fit: BoxFit.cover,
        ),
      );
    }
  }

  void _showOptionsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Photo'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: Text(
                    'Take a Photo',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    takePhoto();
                  },
                ),
                SizedBox(height: 10),
                GestureDetector(
                  child: Text(
                    'Choose from Gallery',
                    style: TextStyle(color: Colors.grey),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    getImageFromGallery();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = context.read<LoginProvider>().userObject.data;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _showOptionsDialog,
              child: CircleAvatar(
                  radius: 20.w,
                  backgroundColor: Colors.grey,
                  child: imageToShow()),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.w),
              color: Colors.white ),
              
              child: Column(children: [
                SizedBox(height: 2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text('Name:',style: TextStyle(color: Colors.black,fontSize: 11.sp,fontWeight: FontWeight.bold),),Spacer(),Text(userProvider!.name!,style: TextStyle(color: Colors.grey,fontSize: 10.sp,),)],),
              SizedBox(height: 2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [Text('Email:',style: TextStyle(color: Colors.black,fontSize: 11.sp,fontWeight: FontWeight.bold),),Spacer(),Text(userProvider.email!,style: TextStyle(color: Colors.grey,fontSize: 11.sp,fontWeight: FontWeight.bold),)],),
              SizedBox(height: 2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text("Father",style: TextStyle(color: Colors.black,fontSize: 11.sp,fontWeight: FontWeight.bold),),Spacer(),Text(userProvider.fatherName!,style: TextStyle(color: Colors.grey,fontSize: 11.sp,fontWeight: FontWeight.bold),)],),
              SizedBox(height: 2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text('CNIC:',style: TextStyle(color: Colors.black,fontSize: 11.sp,fontWeight: FontWeight.bold),),Spacer(),Text(userProvider.cNIC!.toString(),style: TextStyle(color: Colors.grey,fontSize: 11.sp,fontWeight: FontWeight.bold),)],),
              SizedBox(height: 2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text('Unique ID:',style: TextStyle(color: Colors.black,fontSize: 11.sp,fontWeight: FontWeight.bold),),Spacer(),Text(userProvider.uniqueId.toString(),style: TextStyle(color: Colors.grey,fontSize: 11.sp,fontWeight: FontWeight.bold),)],),
              SizedBox(height: 2.h),],),),
              SizedBox(height: 2.h),
            SizedBox(
              width: double.infinity.w,
              child: ElevatedButton(
                onPressed: () {
                  _image != null ? _uploadImage() : _showOptionsDialog();
                },
                child:
                    _image != null ? Text('Upload Pic') : Text('Take a photo'),
              ),
            ),
            SizedBox(
              height: 5.h,
            )
          ],
        ),
      ),
    );
  }
}
