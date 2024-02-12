import 'package:flutter/material.dart';
import 'package:flutter_hw/common/custom_style.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

PreferredSize appbarForRecipes(){
  return PreferredSize(
      preferredSize: Size.fromHeight(8.h),
      child: Container(
        width: double.infinity,
        height: 8.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.h),
              child: const Icon(Icons.search,color: Colors.black54,size: 30,),
            ),
            const Icon(Icons.favorite_border_outlined,color: Colors.pinkAccent,size: 30)
          ],
        ),
      )
  );
}

PreferredSize appBarForMarket({required int inx,required String menuNm}){
  Widget title = Expanded(child: Text(menuNm, style: headTextStyle(txtColor: Colors.black54).copyWith(fontSize: 20),));
  List<Widget> widgetList = [];

  switch(inx){
    case 0 :
      widgetList.add(Expanded(child: Row(
        children: [
          Text(menuNm, style: headTextStyle(txtColor: Colors.black54).copyWith(fontSize: 20),),
          const Icon(Icons.arrow_drop_down,color: Colors.black54,)
        ],
      )));
      widgetList.add(const Icon(Icons.search,color: Colors.black54,size: 30));
      widgetList.add(Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: const Icon(Icons.list,color: Colors.black54,size: 30,),
      ));
      widgetList.add(const Icon(Icons.notifications_outlined,color: Colors.black54,size: 30));
      break;
    case 1 :
      widgetList.add(title);
      widgetList.add(const Icon(Icons.search,color: Colors.black54,size: 30));
      widgetList.add(Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: const Icon(Icons.my_library_add_outlined,color: Colors.black54,size: 30,),
      ));
      widgetList.add(const Icon(Icons.notifications_outlined,color: Colors.black54,size: 30));
      break;
    case 2 :
      widgetList.add(title);
      widgetList.add(Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: const Icon(Icons.edit_outlined,color: Colors.black54,size: 30,),
      ));
      widgetList.add(const Icon(Icons.notifications_outlined,color: Colors.black54,size: 30));
      break;
    case 3 :
      widgetList.add(title);
      break;
    case 4 :
      widgetList.add(title);
      widgetList.add(const Icon(Icons.settings_outlined,color: Colors.black54,size: 30));
      break;
  }
 return  PreferredSize(
   preferredSize: Size.fromHeight(8.h),
   child: Container(
     width: double.infinity,
     height: 8.h,
     decoration: BoxDecoration(
       color: Colors.white,
       boxShadow: [
         BoxShadow(
           color: Colors.grey.withOpacity(0.5),
           offset: const Offset(0, 1), // changes position of shadow
         ),
       ],
     ),
     padding: EdgeInsets.symmetric(horizontal: 2.h),
     child: Row(
       children: widgetList,
     ),
   )
 );
}