import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

const Color kPrimaryColor = Color(0xFFBA964C);
const Color kPrimaryLightColor = Color.fromARGB(255, 255, 255, 255);
const Color kSecondaryColor = Color.fromRGBO(255, 255, 255, 1);
const Color kTextBlackColor = Color(0xFF313131);
const Color kTextHintColor = Color.fromARGB(255, 153, 152, 152);
const Color kCardColor = Color(0xFFf4f7fe);
const Color kScaffoldBackgroundColor = Color(0xffECF9F0);
const Color kTextWhiteColor = Color(0xFFFFFFFF);
const Color kContainerColor = Color(0xFFFFDADA);
const Color kOtherColor = kPrimaryColor;
const Color kTextLightColor = Color(0xFFA5A5A5);
const Color kUnselectedColor = Color.fromARGB(255, 128, 128, 128);
const Color kErrorBorderColor = Color(0xFFE74C3C);
const Color KformfieldColor = Color(0xffD8D8DD);

const kWidthOfInputBoarder = 0.7;
// final kDefaultWidthPadding = 4.w;
// final kDefaultheightPadding = 1.h;

final kHeightlargeSizedBox = SizedBox(
  height: 1.h * 2,
);

final kHeightSmallSizedBox = SizedBox(
  height: 1.h,
);
final kWidthSizedBox = SizedBox(
  width: 4.w,
);

final kHeightHalfSizedBox = SizedBox(
  height: 1.h / 2,
);

final kHalfWidthSizedBox = SizedBox(
  width: 4.w / 2,
);

final kTopBorderRadius = BorderRadius.only(
  topLeft: Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
  topRight:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
);

final kBorderRadiusAll = BorderRadius.all(
  Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
);

final kBottomBorderRadius = BorderRadius.only(
  bottomRight:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
  bottomLeft:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
);

//validation for mobile
const String mobilePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

//validation for email
const String emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
