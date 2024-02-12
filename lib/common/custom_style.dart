import 'package:flutter/material.dart';

TextStyle titleTextStyle({Color? txtColor}){
  return TextStyle(fontSize: 28,color: txtColor ?? Colors.white,fontWeight: FontWeight.bold);
}

TextStyle subTextStyle({Color? txtColor, double? size}){
  return TextStyle(fontSize: size ?? 17,color: txtColor ?? Colors.black);
}

TextStyle headTextStyle({Color? txtColor}){
  return TextStyle(fontSize: 25,color: txtColor ?? Colors.black,fontWeight: FontWeight.bold);
}