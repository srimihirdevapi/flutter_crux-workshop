import 'dart:ui';

import 'package:flutter/material.dart';

const String kErrorText = 'This field cannot be empty';
const String kHintText_ID = 'Please enter your ID Number';
const String kHintText_pwd = 'Please enter your Password';

//Colors
const Color kPrimaryColor = Color(0xFF2FC4B2);
const Color kSwitchActiveTrackColor = Color(0x5A2FC4B2);
const Color kEntryFillColor = Color(0xFFEBEBEB);
const Color kHintColor = Color(0xFFBFBFBF);
const Color kRadioColor = Color(0xFFC4C4C4);

// TextStyles
const TextStyle kHeaderTextStyle = TextStyle(
  color: kPrimaryColor,
  fontSize: 40,
  fontWeight: FontWeight.w900,
);

const TextStyle kEntryTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w500,
  fontSize: 21,
);

const TextStyle kRegisterPageTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w500,
  fontSize: 18,
);

const TextStyle kBottomButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

const TextStyle kRedirectingTextStyle = TextStyle(
  color: kPrimaryColor,
  fontSize: 18,
  fontWeight: FontWeight.w700,
);

const TextStyle kNormalTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 18,
  fontWeight: FontWeight.w500,
);

const TextStyle kGreetingIDTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 40,
  fontWeight: FontWeight.w900,
);

const TextStyle kHintTextStyle = TextStyle(
  color: kHintColor,
  fontSize: 18,
);

const TextStyle kDropDownTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 18,
  fontWeight: FontWeight.w400,
);

// Decoration
const Decoration kBottomButtonDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(10)),
  color: kPrimaryColor,
);
