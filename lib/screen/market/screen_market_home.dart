import 'package:flutter/material.dart';
import 'package:flutter_hw/common/custom_appbar.dart';
import 'package:flutter_hw/common/custom_color.dart';
import 'package:flutter_hw/common/custom_style.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class MarketHomePage extends StatefulWidget{
  const MarketHomePage({super.key});

  @override
  State<MarketHomePage> createState() => _MarketHomePage();
}

class _MarketHomePage extends State<MarketHomePage>{

  Widget listItem({bool isLast = false, required int inx, required String itemNm, required String location, required String time, required String price}){
    return Container(
      padding : EdgeInsets.symmetric(horizontal: 3.h),
      color: Colors.white,
      child: Container(
        width: double.infinity,
        height: 25.h,
        padding: EdgeInsets.symmetric(vertical: 3.h),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1,color: (isLast)?Colors.transparent:Colors.black38))
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                width: 30.w,
                child: Image.asset('assets/image/market/home_item_$inx.jpg',fit: BoxFit.fill,),
              ),
            ),
            SizedBox(width: 5.w),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(itemNm, style: subTextStyle(),),
                  Text('$location • $time'),
                  Text(price, style: subTextStyle().copyWith(fontSize: 18,fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(Icons.forum_outlined,color: Colors.black38,size: 15,),
                      SizedBox(width:0.5.w,),
                      Text('0', style: subTextStyle()),
                      SizedBox(width:1.w,),
                      const Icon(Icons.favorite_border_outlined,color: Colors.black38,size: 15,),
                      SizedBox(width:0.5.w,),
                      Text('0', style: subTextStyle()),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: appBarForMarket(inx: 0, menuNm: "장평동"),
          body: Container(
            color: mainBgColor,
            width: double.infinity,
            height: double.infinity,
            child:ListView(
              children: [
                listItem(inx: 1, itemNm: '감기약', location: '장평동', time: '1분 전', price: '10,000원'),
                listItem(inx: 2, itemNm: '부적', location: '고현동', time: '1시간 전', price: '50,000원'),
                listItem(inx: 3, itemNm: '고양이 피규어', location: '장평동', time: '2시간 전', price: '5,000원'),
                listItem(inx: 4, itemNm: '홈런볼', location: '고현동', time: '2시간 전', price: '1,000원'),
                listItem(inx: 5, itemNm: '마카다미아', location: '장평동', time: '2시간 전', price: '200,000원'),
                listItem(inx: 6, itemNm: '텅빈 지갑', location: '장평동', time: '2시간 전', price: '0원'),
                listItem(inx: 7, itemNm: '배민 상품권', location: '장평동', time: '1일 전', price: '8,000원'),
                listItem(inx: 8, itemNm: '케이크', location: '고현동', time: '1일 전', price: '10,000원'),
                listItem(isLast: true,inx: 9, itemNm: '전화기', location: '장평동', time: '2일 전', price: '50,000원')
              ],
            ),
          ),
        )
    );
  }
}