import 'package:flutter/material.dart';
import 'package:flutter_hw/common/custom_color.dart';
import 'package:flutter_hw/common/custom_style.dart';
import 'package:flutter_hw/common/custom_widget.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class ShoppingCartPage extends StatefulWidget{
  const ShoppingCartPage({super.key});

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPage();
}

class _ShoppingCartPage extends State<ShoppingCartPage>{
  List<String> imgPathList = [
    'assets/image/recipes/recipes_1.jpg',
    'assets/image/airbnb/explorer.jpg',
    'assets/image/market/home_item_8.jpg',
    'assets/image/recipes/recipes_3.jpg',
  ];

  int selectedId = 0;
  Color selectedColor = Colors.orange;

  Widget selectBtnWidget({required int id,required IconData icon}){
    return Container(
      width: 20.w,
      height: 20.w,
      decoration: BoxDecoration(
        color: (id == selectedId)? selectedColor : Colors.black12,
        borderRadius: BorderRadius.circular(15),
      ),
      child: IconButton(
        onPressed: () => setState(() {
          selectedId = id;
        }),
        icon: Icon(icon,)
      ),
    );
  }

  Widget colorBtn({required Color color}){
    return GestureDetector(
      onTap: () => setState(() {
        selectedColor = color;
      }),
      child: Container(
        width: 15.w,
        height: 15.w,
        decoration: BoxDecoration(
          color: Colors.white,
          border: (selectedColor == color)?
            Border.all(color: Colors.black,width: 2):
            Border.all(color: Colors.black38,width: 1),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
          child: Container(
            width: 12.w,
            height: 12.w,
            decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50),
            ),
          ),
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart))
            ],
          ),
          body: Container(
            color: mainBgColor,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(3.h),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 25.h,
                        child: Image.asset(imgPathList[selectedId],fit: BoxFit.fitWidth),
                      ),
                      SizedBox(height: 3.h,),
                      SizedBox(
                        height: 15.h,
                        width:  double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            selectBtnWidget(id: 0, icon: Icons.set_meal),
                            selectBtnWidget(id: 1, icon: Icons.castle),
                            selectBtnWidget(id: 2, icon: Icons.cake),
                            selectBtnWidget(id: 3, icon: Icons.ramen_dining),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 3.h,left: 3.h,right: 3.h,bottom: 1.h),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Urban Soft AL 10.0',style: subTextStyle().copyWith(fontWeight: FontWeight.bold)),
                              Text('\$699',style: subTextStyle().copyWith(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star,color: Colors.yellow,size: 20),
                                  Icon(Icons.star,color: Colors.yellow,size: 20),
                                  Icon(Icons.star,color: Colors.yellow,size: 20),
                                  Icon(Icons.star,color: Colors.yellow,size: 20),
                                  Icon(Icons.star,color: Colors.yellow,size: 20),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('review',style: TextStyle(fontSize: 12),),
                                  Text('(26)',style: TextStyle(fontSize: 12,color: Colors.blue),),
                                ],
                              )
                            ],
                          ),
                          const Text('Color Options'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              colorBtn(color: Colors.black),
                              colorBtn(color: Colors.green),
                              colorBtn(color: Colors.orange),
                              colorBtn(color: Colors.grey),
                              colorBtn(color: Colors.white),
                            ],
                          ),
                          customBtn(txt: 'Add to Cart', onPressed: () => {},width: double.infinity,height: 8.h,bgColor: Colors.orange)
                        ],
                      ),
                    )
                )
              ],
            ),
          ),
        )
    );
  }

}