import 'package:flutter/material.dart';
import 'package:flutter_hw/common/custom_widget.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  bool isLogin = false;

  Widget loginForm(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        customEt(label: "Email"),
        SizedBox(height: 5.h),
        customEt(label: "Password"),
        SizedBox(height: 10.h),
        customBtn(txt: "로그인",onPressed: () => setState(() => isLogin = true),)
      ],
    );
  }

  Widget menuForm(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        customBtn(txt: "모두의 숙소",onPressed: () => Navigator.of(context).pushNamed("/airbnb"),),
        SizedBox(height: 5.h),
        customBtn(txt: "오이 마켓",onPressed: () => Navigator.pushNamed(context, "/market"),),
        SizedBox(height: 5.h),
        customBtn(txt: "지그 지그",onPressed: () => Navigator.pushNamed(context, "/store"),),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.redeem_outlined,
                    size: 30.w,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  const Text("플러터 스터디",style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,),)
                ],
              ),
              Expanded(
                  child: isLogin?menuForm():loginForm()
              )
            ],
          ),
        ),
      ),
    );
  }
}