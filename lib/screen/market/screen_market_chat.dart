import 'package:flutter/material.dart';
import 'package:flutter_hw/common/custom_appbar.dart';
import 'package:flutter_hw/common/custom_color.dart';
import 'package:flutter_hw/model/model_neighbor_item.dart';
import 'package:flutter_sizer/flutter_sizer.dart';


class MarketChatPage extends StatefulWidget{
  const MarketChatPage({super.key});

  @override
  State<MarketChatPage> createState() => _MarketChatPage();
}

class _MarketChatPage extends State<MarketChatPage>{

  Widget chatItem({required NeighborItem item}){
    return Container(
      width: double.infinity,
      height: 15.h,
      padding: EdgeInsets.all(2.h),
      decoration: const BoxDecoration(
          color: Colors.white,
          border:Border(bottom: BorderSide(color: Colors.black12,width: 1))
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: SizedBox(
              width: 8.h,
              height: 8.h,
              child: Image.asset('assets/image/market/home_item_6.jpg',
                  fit: BoxFit.fitHeight),
            ),
          ),
          SizedBox(width: 2.w,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('${item.userNm},',style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                    Text(' ${item.agree} • ${item.time}', style: const TextStyle(color: Colors.black38)),
                  ],
                ),
                Text(item.content,maxLines: 1,overflow: TextOverflow.ellipsis,)
              ],
            ),
          ),
          SizedBox(width: 2.w,),
          (item.isNear)?
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: SizedBox(
              width: 8.h,
              height: 8.h,
              child: Image.asset('assets/image/market/home_item_3.jpg',
                  fit: BoxFit.cover),
            ),
          ):
         const SizedBox(width: 0,)
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: appBarForMarket(inx: 3, menuNm: "채팅"),
          body: Container(
            color: mainBgColor,
            width: double.infinity,
            height: double.infinity,
            child: ListView(
              children: [
                chatItem(
                    item: NeighborItem(
                      isNear: false,
                      time: '1시간 전',
                      userNm: '당근이',
                      agree: '장평동',
                      content: '안녕하세요! 아이패드 사고싶은데 팔렸나요 ? 안팔렸다면 시간알려주세요')
                ),
                chatItem(
                    item: NeighborItem(
                      time: '2시간 전',
                      userNm: 'Flutter',
                      agree: '고현동',
                      content: '죄송한데 지금 예약이 이미 달려있어서 ㅠㅠ 죄송해요')
                ),
              ],
            ),
          ),
        )
    );
  }

}