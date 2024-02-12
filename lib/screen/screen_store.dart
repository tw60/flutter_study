import 'package:flutter/material.dart';
import 'package:flutter_hw/common/custom_style.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class StoreHome extends StatefulWidget{
  const StoreHome({super.key});

  @override
  State<StoreHome> createState() => _StoreHome();

}

class _StoreHome extends State<StoreHome>{
  String selected = "tommy";

  Widget headWidget(String menuNm){
    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() {
          selected = menuNm;
        }),
        child: Center(child: Text(menuNm,style: subTextStyle().copyWith(fontWeight: FontWeight.bold))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];
    for(int i = 1; i< 11; i++){
      widgetList.add(
          Container(
            padding: EdgeInsets.symmetric(vertical: 0.5.h),
            width: double.infinity,
            child: AspectRatio(
                aspectRatio: 3/4,
                child: Image.asset('assets/image/store/$selected$i.jpg',fit: BoxFit.fitWidth)
            ),
            // child: ,
          )
      );
    }

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 10.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    headWidget('tommy'),
                    headWidget('food'),
                    headWidget('travel')
                  ],
                ),
              ),
              Expanded(
                  child:ListView(
                      children: widgetList,
                    ))
            ],
          ),
        ),
      ) 
    );
  }

}
