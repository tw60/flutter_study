import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

Widget customBtn({double? width, double? height, required String txt, Color bgColor = Colors.black54, Color txtColor = Colors.white, required VoidCallback onPressed}){
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          fixedSize: Size(width ?? 80.w,height ?? 10.h),
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
      ),
      onPressed: onPressed,
      child:  Center(
        child: Text(txt,style: TextStyle(color: txtColor,fontWeight: FontWeight.bold,fontSize: 20)),
      )
  );
}

Widget customEt({double? width, double? height, String label = "", String hintTxt = "",String value = ""}){
  return SizedBox(
    width: width ?? 80.w,
    height: height ?? 10.h,
    child: TextFormField(
      initialValue: value,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: label,
        hintText: hintTxt,
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),

            borderRadius: BorderRadius.all(Radius.circular(15))
        )
      ),
    ),
  );
}