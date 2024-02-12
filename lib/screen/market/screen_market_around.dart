import 'package:flutter/material.dart';
import 'package:flutter_hw/common/custom_appbar.dart';
import 'package:flutter_hw/common/custom_color.dart';
import 'package:flutter_hw/common/custom_style.dart';
import 'package:flutter_hw/screen/screen_recipes.dart';
import 'package:flutter_sizer/flutter_sizer.dart';


class MarketAroundPage extends StatefulWidget{
  const MarketAroundPage({super.key});

  @override
  State<MarketAroundPage> createState() => _MarketAroundPage();
}

class _MarketAroundPage extends State<MarketAroundPage>{

  Widget keywordWidget({required String keyword}){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.w),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black12,width: 1)
        ),
        padding: EdgeInsets.symmetric(vertical: 1.w,horizontal: 3.w),
        child: Center(child: Text(keyword,style: const TextStyle(color: Colors.black38))),
      ),
    );
  }

  Widget iconWidget({required IconData icon, required String title}){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(icon,size: 60),
        Text(title,style: subTextStyle().copyWith(fontWeight: FontWeight.bold),)
      ],
    );
  }

  Widget recommandItem({required String storeNm}){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h,vertical: 1.h),
      child: Container(
        width: 85.w,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12,width: 1),
          borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(15)),
                  child: SizedBox(
                    width: 39.w,
                    height: 30.w,
                    child: Image.asset('assets/image/market/near_rec_${storeNm}_1.jpg',
                        fit: BoxFit.cover),
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(15)),
                  child: SizedBox(
                    width: 39.w,
                    height: 30.w,
                    child: Image.asset('assets/image/market/near_rec_${storeNm}_2.jpg',
                        fit: BoxFit.cover),
                  ),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(2.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(storeNm, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        SizedBox(width: 2.h,),
                        const Text('장평동', style: TextStyle(color: Colors.black38, fontSize: 13),)
                      ],
                    ),
                    Text('$storeNm의 장점은 다음과 같습니다. 다음이란 무엇일까요 ?',
                      style: const TextStyle(fontSize: 15, overflow: TextOverflow.ellipsis), maxLines: 1,),
                    const Row(
                      children: [
                        Text('후기 1개', style: TextStyle(fontSize: 15,color: Colors.lightBlue),),
                        Text(' • 관심 8', style: TextStyle(fontSize: 15),)
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 2.w),
                      decoration: BoxDecoration(
                        color: mainBgColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text('후기란,, 후기이므로 후기는 후기답게 써야하지만 '
                          '후기를 쓰는 일이란 후기처럼 쓰는게 쉽지않습니다.',
                          style: TextStyle(fontSize: 15,),maxLines: 2,overflow: TextOverflow.ellipsis),
                    )
                  ],
                ),
              )
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
          appBar: appBarForMarket(inx: 2, menuNm: "내 근처"),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            color: mainBgColor,
            child: ListView(
              children: [
                Container(
                  height: 20.h,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(2.h),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: '장평동 주변 가게를 찾아보세요.',
                            filled:true,
                            fillColor: mainBgColor,
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 1,color: Colors.black12),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(width: 1,color: Colors.black12),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            prefixIcon: const Icon(Icons.search,color: Colors.black38),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 2.h,right: 2.h,bottom: 2.h),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              keywordWidget(keyword: '인테리어'),
                              keywordWidget(keyword: '학원'),
                              keywordWidget(keyword: '이사'),
                              keywordWidget(keyword: '카페'),
                              keywordWidget(keyword: '맛집'),
                              keywordWidget(keyword: '뷰맛집'),
                              keywordWidget(keyword: '다이소'),
                              keywordWidget(keyword: '청소'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 2.h),
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 50.h,
                        padding: EdgeInsets.all(2.h),
                        child: Column(
                          children: [
                            Flexible(
                              child: SizedBox(
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Expanded(child: iconWidget(
                                        icon: Icons.person_outline,
                                        title: '구인 구직')),
                                    Expanded(child: iconWidget(
                                        icon: Icons.edit_note_outlined,
                                        title: '과외/클래스')),
                                    Expanded(child: iconWidget(
                                        icon: Icons.house_outlined,
                                        title: '부동산')),
                                  ],
                                ),
                              ),
                            ),
                            Flexible(
                              child: Row(
                                children: [
                                  Expanded(child: iconWidget(
                                      icon: Icons.directions_car_outlined,
                                      title: '중고차')),
                                  Expanded(child: iconWidget(
                                      icon: Icons.restaurant,
                                      title: '맛집')),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RecipesPage(),)),
                                      child: iconWidget(
                                        icon: Icons.emoji_food_beverage_outlined,
                                        title: '레시피'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(2.h),
                              child: const Text('이웃들의 추천 가게',
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 85.w,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  recommandItem(storeNm: 'store1'),
                                  recommandItem(storeNm: 'store2'),
                                  recommandItem(storeNm: 'store3'),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }

}