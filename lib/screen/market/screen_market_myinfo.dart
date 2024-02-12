// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_hw/common/custom_appbar.dart';
import 'package:flutter_hw/common/custom_color.dart';
import 'package:flutter_hw/common/custom_style.dart';
import 'package:flutter_hw/screen/screen_profile.dart';
import 'package:flutter_hw/screen/screen_shopping_cart.dart';
import 'package:flutter_sizer/flutter_sizer.dart';


class MarketMyInfoPage extends StatefulWidget{
  const MarketMyInfoPage({super.key});

  @override
  State<MarketMyInfoPage> createState() => _MarketMyInfoPage();
}

class _MarketMyInfoPage extends State<MarketMyInfoPage>{

  Widget mainMenuItem({required String menuNm}){
    IconData icon;
    
    switch(menuNm){
      case '판매내역':
        icon = Icons.receipt_long;
        break;
      case '구매내역':
        icon = Icons.shopping_bag;
        break;
      case '관심목록':
      default:
        icon = Icons.favorite;
        break;
    }
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 20.w,
          height: 20.w,
          decoration: BoxDecoration(
            color: Colors.orangeAccent.withAlpha(50),
            border: Border.all(color: Colors.black12,width: 1),
            borderRadius: BorderRadius.circular(50)
          ),
          child: Icon(icon,color: Colors.orangeAccent,size: 30),
        ),
        Text(menuNm,style: subTextStyle(),)
      ],
    );
  }

  Widget listItem({required IconData icon, required String menuNm}){
    return SizedBox(
      width: double.infinity,
      height: 8.h,
      child: Row(
        children: [
          Icon(icon,size: 25,),
          SizedBox(width: 2.h,),
          Text(menuNm,style: subTextStyle(),)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: appBarForMarket(inx: 4, menuNm: "나의 정보"),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            color: mainBgColor,
            child: ListView(
              children: [
                Container(
                  color: Colors.white70,
                  width: double.infinity,
                  height: 50.h,
                  padding: EdgeInsets.all(2.h),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 12.h,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 10.h,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: SizedBox(
                                        width: 10.h,
                                        height: 10.h,
                                        child: Image.asset('assets/image/market/info_main.jpg',
                                            fit: BoxFit.fitHeight),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      width: 3.h,
                                      height: 3.h,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15)
                                      ),
                                      child: const Icon(Icons.photo_camera_outlined,size: 12),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 2.h,),
                            const Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Developer',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                                  Text('장평동 #00924',style: TextStyle(color: Colors.black38),),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.h),
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              fixedSize: Size(double.infinity,8.h),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                              ),
                              side: const BorderSide(color: Colors.black12,width: 1)
                            ),
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(),));},
                          child: Center(
                            child: Text('프로필 보기',style: subTextStyle(),),
                          )
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                            width: double.infinity,
                            child: Row(
                              children: [
                                Expanded(
                                    child: mainMenuItem(menuNm: '판매내역')),
                                Expanded(
                                    child: mainMenuItem(menuNm: '구매내역')),
                                Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingCartPage(),));
                                      },
                                      child: mainMenuItem(menuNm: '관심목록'))),
                              ],
                            ),
                          )
                      )
                    ],
                  ),
                ),
                SizedBox(height: 2.h),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  height: 37.h,
                  color: Colors.white70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      listItem(icon: Icons.location_on, menuNm: '내 동네 설정'),
                      listItem(icon: Icons.zoom_in_map, menuNm: '동네 인증하기'),
                      listItem(icon: Icons.local_offer, menuNm: '키워드 알림'),
                      listItem(icon: Icons.window, menuNm: '모아보기'),
                    ],
                  ),
                ),
                SizedBox(height: 2.h),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  height: 28.h,
                  color: Colors.white70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      listItem(icon: Icons.edit_note, menuNm: '동네생활 글'),
                      listItem(icon: Icons.textsms_outlined, menuNm: '동네생활 댓글'),
                      listItem(icon: Icons.star_border, menuNm: '동네생활 주제 목록'),
                    ],
                  ),
                ),
                SizedBox(height: 2.h),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  height: 19.h,
                  color: Colors.white70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      listItem(icon: Icons.store, menuNm: '비즈 프로필 관리'),
                      listItem(icon: Icons.notifications_outlined, menuNm: '지역광고'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }

}