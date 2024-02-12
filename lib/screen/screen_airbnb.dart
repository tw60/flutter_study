import 'package:flutter/material.dart';
import 'package:flutter_hw/common/custom_style.dart';
import 'package:flutter_hw/common/custom_widget.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class CustomAirBnb extends StatelessWidget{
  const CustomAirBnb({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height:double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/airbnb/bg_airbnb.JPG'),
              fit: BoxFit.fitHeight
            )
          ),
          child: ListView(
            children: [
              Container(
                color: Colors.transparent,
                height: 10.h,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 5.h),
                        child: Row(
                          children: [
                            const Icon(Icons.heart_broken_outlined,color: Colors.pinkAccent,size: 25),
                            SizedBox(width: 2.h),
                            Text("RoomOfAll",style: headTextStyle(txtColor: Colors.white)),
                          ],
                        ),
                      ),
                      Text("회원 가입",style: subTextStyle(txtColor: Colors.white)),
                      Text("로그인",style: subTextStyle(txtColor: Colors.white)),
                    ],
                  ),
                ),
              ),
              SizedBox(height:5.h,),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.h),
                      child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("모두의 숙소에서\n숙소를 검색하세요.", style: titleTextStyle(txtColor: Colors.black)),
                            SizedBox(height: 1.h,),
                            Text("혼자하는 여행에 적합한 개인실부터\n여럿이 함께하는 공간전체 숙소까지,\n모두의 숙소에 다 있습니다.",
                                style: subTextStyle()),
                            SizedBox(height: 3.h,),
                            customEt(width: double.infinity,label: '위치',hintTxt: '근처 추천 장소'),
                            SizedBox(height: 1.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                customEt(width: 39.w,label: '체크인', hintTxt: '날짜 입력'),
                                customEt(width: 39.w,label: '체크 아웃', hintTxt: '날짜 입력'),
                              ],
                            ),
                            SizedBox(height: 1.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                customEt(width: 39.w,label: '성인',value: '2'),
                                customEt(width: 39.w,label: '어린이',value: '0'),
                              ],
                            ),
                            SizedBox(height: 3.h,),
                            customBtn(height: 8.h,txt: '검색', onPressed: () {},bgColor: Colors.pinkAccent)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.h),
                      child: Container(
                        width: double.infinity,
                        height: 50.h,
                        padding: EdgeInsets.all(3.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage('assets/image/airbnb/explorer.jpg'),
                                fit: BoxFit.fitHeight,
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("이제,\n여행은 가까운 곳에서",
                              style: titleTextStyle()),
                            SizedBox(height: 1.h,),
                            Text("새로운 공간에 머물러 보세요.\n살아보기, 출장, 여행 등\n다양한 목적에 알맞는 숙소를\n찾아보세요.",
                              style: subTextStyle(txtColor: Colors.white)),
                            SizedBox(height: 3.h,),
                            customBtn(txt: '가까운 여행지 둘러보기', onPressed: () {},height: 7.h,bgColor: Colors.white,txtColor: Colors.black
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.h),
                      child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('한국에 위치한 숙소를\n직접 다녀간 게스트의 후기',
                            style: headTextStyle(),),
                            Text('게스트 후기 2,500,000개 이상,\n평점 4.7점 (5점 만점)',
                            style: subTextStyle()),
                            SizedBox(height: 5.h,),
                            reviewForm(
                                inx: 1,
                                content: "Édouard est un hôte disponible et bienveillant. "
                                    "nous recommandons ce logement. la literie est vraiment de qualité. "
                                    "Le logement est facile à trouver et on se gare facilement devant."
                                    "merci Édouard pour ton accueil et ta joie de vivre.",
                                user: "Sarah",
                                userFrom: "France"),
                            SizedBox(height: 3.h,),
                            reviewForm(
                                inx: 2,
                                content: "Second séjour chez Édouard et toujours aussi chaleureux et agréable. "
                                    "J'ai pu disposer de la chambre avec beaucoup de souplesse d'horaire et de confort. "
                                    "J'apprécie énormément l'esprit d'hospitalité d'Édouard. "
                                    "Je me suis senti tout autant lyonnais qu'un membre de sa famille.",
                                user: "Marc",
                                userFrom: "엑스레뱅, 프랑스"),
                            SizedBox(height: 3.h,),
                            reviewForm(
                                inx: 3,
                                content: "Que dire sinon que tout était parfait ?"
                                    " Edouard est très accueillant, la chambre est propre, bien rangée et bien équipée."
                                    " On a accès à la cuisine."
                                    " Adresse formidable que je garde précieusement pour un séjour à Lyon.",
                                user: "Maxence",
                                userFrom: "Vinsobres, 프랑스"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget reviewForm({required int inx,required String content,required String user,required String userFrom}){
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: double.infinity,
            height: 25.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage('assets/image/airbnb/review_$inx.jpg'),
                fit: BoxFit.fitWidth
              )
            ),
          ),
          Row(
            children: [
              const Icon(Icons.star,color: Colors.red,),
              const Icon(Icons.star,color: Colors.red,),
              const Icon(Icons.star,color: Colors.red,),
              const Icon(Icons.star,color: Colors.red,),
              (inx % 2 == 0) ?
                const Icon(Icons.star,color: Colors.red,) :
                const Icon(Icons.star_border_outlined,color: Colors.red,),
            ],
          ),
          Text(content,maxLines: 3,overflow: TextOverflow.ellipsis,style: subTextStyle()),
          Row(
            children: [
              Container(
                width: 8.w,
                height: 8.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/image/airbnb/review_$inx.jpg'),
                        fit: BoxFit.fitWidth
                    )
                ),
              ),
              SizedBox(width: 5.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(user,style:subTextStyle().copyWith(fontWeight: FontWeight.bold),),
                  Text(userFrom,)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}