import 'package:flutter/material.dart';
import 'package:flutter_hw/common/custom_style.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          endDrawer: Drawer(
            width: 60.w,
            backgroundColor: Colors.lightBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0)
            ),
          ),
          appBar: AppBar(
            automaticallyImplyLeading: false,
          ),
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: ListView(
              children: [
                Container(
                  width: double.infinity,
                  height: 45.h,
                  padding: EdgeInsets.symmetric(vertical: 3.h),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5.h),
                        width: double.infinity,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: SizedBox(
                                width: 10.h,
                                height: 10.h,
                                child: Image.asset('assets/image/airbnb/user.jpg',
                                    fit: BoxFit.fitHeight),
                              ),
                            ),
                            SizedBox(width: 2.h,),
                            Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('GetinThere',style: headTextStyle(),),
                                    Text('프로그래머/작가/강사',style: subTextStyle(),),
                                    const Text('데어 프로그래밍',),
                                  ],
                                )
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 3.h,),
                      Container(
                        width: double.infinity,
                        height: 15.h,
                        padding: EdgeInsets.symmetric(vertical: 3.h),
                        child: const Row(
                          children: [
                            Expanded(
                                child: Text('50\nPosts',textAlign: TextAlign.center,)
                            ),
                            VerticalDivider(color: Colors.blue,width: 1,),
                            Expanded(
                                child: Text('10\nLikes',textAlign: TextAlign.center)
                            ),
                            VerticalDivider(color: Colors.blue,width: 1,),
                            Expanded(
                                child: Text('3\nShare',textAlign: TextAlign.center)
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child:Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    fixedSize: Size(38.w, 7.h),
                                    backgroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                                ),
                                  onPressed: () => {},
                                  child: Text('Follow',style: subTextStyle(txtColor: Colors.white),)
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: Size(38.w, 7.h),
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(side: const BorderSide(width: 1,color: Colors.black38 ),borderRadius: BorderRadius.circular(8))
                                  ),
                                  onPressed: () => {},
                                  child: Text('Message',style: subTextStyle(),)
                              ),
                            ],
                          ),
                        )
                      )
                    ],
                  ),
                ),
                TabBar(
                    controller: tabController,
                    tabs: const [
                      Tab(
                        icon: Icon(Icons.pets),
                      ),
                      Tab(
                        icon: Icon(Icons.pets),
                      ),
                    ]
                ),
                // TabBarView(
                //     controller: tabController,
                //     children: [
                //     ]
                // )
              ],
            ),
          ),
        )
    );
  }
}