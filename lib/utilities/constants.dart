import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kTextFieldInputDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  hintText: '17 characters vin number',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    borderSide: BorderSide.none,
  ),
);

const kSecondaryTextStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.w300,
  color: Colors.white,
);

const kMainTextStyle = TextStyle(
  fontSize: 32.0,
  fontWeight: FontWeight.w500,
);

const kBoxDecorationStyle = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomRight,
    colors: [Colors.blue, Colors.white],
  ),
);
