import 'package:flutter/material.dart';
import 'package:flutter_hw/common/custom_appbar.dart';
import 'package:flutter_hw/common/custom_color.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import '../../common/custom_style.dart';
import '../../model/model_neighbor_item.dart';

class MarketNeighborPage extends StatefulWidget{
  const MarketNeighborPage({super.key});

  @override
  State<MarketNeighborPage> createState() => _MarketNeighborPage();
}

class _MarketNeighborPage extends State<MarketNeighborPage>{

  Widget listItem({required NeighborItem item}){
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(3.h),
          decoration: const BoxDecoration(
              color: Colors.white,
            border: Border(bottom: BorderSide(color: Colors.black12,width: 1))
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black12,
                    ),
                    child: Text(item.isNear?'우리 동네 질문':'',style: subTextStyle().copyWith(fontWeight: FontWeight.bold),),
                  ),
                  Text(item.time,style: subTextStyle().copyWith(fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      width: 5.h,
                      height: 5.h,
                      child: Image.asset('assets/image/market/nei_first_user.jpg',fit: BoxFit.fitWidth,),
                    ),
                  ),
                  SizedBox(width: 2.h),
                  Text(item.userNm,style: subTextStyle(),),
                  SizedBox(width: 1.h),
                  Text(item.agree,style: subTextStyle(txtColor: Colors.grey,size: 15),)
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                child: Text(item.content,maxLines: 3,overflow: TextOverflow.ellipsis,style: subTextStyle()),
              ),
              Image.asset('assets/image/market/nei_first_item.jpg'),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(3.h),
          child: const Row(
            children: [
              Icon(Icons.emoji_emotions_outlined, color: Colors.black38,),
              Text(' 공감하기 '),
              Icon(Icons.quickreply_outlined, color: Colors.black38,),
              Text(' 댓글쓰기 11'),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: appBarForMarket(inx: 1, menuNm: "동네생활"),
          body: Container(
            color: mainBgColor,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 250,246,251),
                    border: Border(bottom: BorderSide(color: Colors.black12,width: 1))
                  ),
                  padding: EdgeInsets.all(2.h),
                  width: double.infinity,
                  height: 12.h,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          width: 8.h,
                          child: Image.asset('assets/image/market/nei_top_item.jpg',fit: BoxFit.fitWidth,),
                        ),
                      ),
                      SizedBox(width: 2.h,),
                      const Text('이웃과 함께 만드는 봄 간식 지도,\n마음까지 따듯해지는 봄 간식을 만나보세요.')
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 2.h),
                          child: listItem(
                              item: NeighborItem(
                                  time: '3시간 전',
                                  userNm: '헬로 비비',
                                  agree: '좌동 인증 3회',
                                  content: '여기 스테이크 개도랏음. 꼭 드셔보세요ㅠ 사이드로 나오는 매시드 포테이토도'
                                      ' 이게 버터인지 감자인지 구분안될 정도... 미쳤어요 그냥... 여기 스테이크 개도랏음. 꼭 드셔보세요ㅠ 사이드로 나오는 매시드 포테이토도'
                                      ' 이게 버터인지 감자인지 구분안될 정도... 미쳤어요 그냥... 여기 스테이크 개도랏음. 꼭 드셔보세요ㅠ 사이드로 나오는 매시드 포테이토도'
                                      ' 이게 버터인지 감자인지 구분안될 정도... 미쳤어요 그냥... 여기 스테이크 개도랏음. 꼭 드셔보세요ㅠ 사이드로 나오는 매시드 포테이토도'
                                      ' 이게 버터인지 감자인지 구분안될 정도... 미쳤어요 그냥...')),
                        ),
                        listItem(
                            item: NeighborItem(
                                time: '3시간 전',
                                userNm: '헬로 비비',
                                agree: '좌동 인증 3회',
                                content: '여기 스테이크 개도랏음. 꼭 드셔보세요ㅠ 사이드로 나오는 매시드 포테이토도'
                                    ' 이게 버터인지 감자인지 구분안될 정도... 미쳤어요 그냥... 여기 스테이크 개도랏음. 꼭 드셔보세요ㅠ 사이드로 나오는 매시드 포테이토도'
                                    ' 이게 버터인지 감자인지 구분안될 정도... 미쳤어요 그냥... 여기 스테이크 개도랏음. 꼭 드셔보세요ㅠ 사이드로 나오는 매시드 포테이토도'
                                    ' 이게 버터인지 감자인지 구분안될 정도... 미쳤어요 그냥... 여기 스테이크 개도랏음. 꼭 드셔보세요ㅠ 사이드로 나오는 매시드 포테이토도'
                                    ' 이게 버터인지 감자인지 구분안될 정도... 미쳤어요 그냥...')),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }

}