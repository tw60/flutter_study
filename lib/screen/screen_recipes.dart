import 'package:flutter/material.dart';
import 'package:flutter_hw/common/custom_appbar.dart';
import 'package:flutter_hw/common/custom_style.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class RecipesPage extends StatelessWidget{
  const RecipesPage({super.key});

  Widget recipesItem({required int inx}){
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: SizedBox(
              width: double.infinity,
              height: 30.h,
              child: Image.asset('assets/image/recipes/recipes_$inx.jpg',
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.h, bottom: 1.h),
            child: Text(
              'Recipes$inx',
              style: subTextStyle().copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const Text(
            'Have you ever made your own Made Coffee? Once you\'ve tried '
                'a homemade Made Coffee, you\'ll never go back.',
            style: TextStyle(fontSize: 14, color: Colors.black38),
          ),
        ],
      ),
    );
  }

  Widget typeItem({required IconData icon, required String menuNm}){
    return Container(
      width: 20.w,
      padding: EdgeInsets.symmetric(vertical: 3.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.black12,width: 1)
      ),
      child: Column(
        children: [
          Icon(icon,color: Colors.redAccent,size: 30,),
          SizedBox(height: 2.h,),
          Text(menuNm,style: const TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),

    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: appbarForRecipes(),
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.all(3.h),
                  child: Text('Recipes',style: headTextStyle()),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 3.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      typeItem(icon: Icons.restaurant_menu, menuNm: 'ALL'),
                      typeItem(icon: Icons.ramen_dining_outlined, menuNm: 'TYPE1'),
                      typeItem(icon: Icons.set_meal_outlined, menuNm: 'TYPE2'),
                      typeItem(icon: Icons.fastfood_outlined, menuNm: 'TYPE3'),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(3.h),
                  child: Column(
                    children: [
                      recipesItem(inx: 1),
                      SizedBox(height: 2.w,),
                      recipesItem(inx: 2),
                      SizedBox(height: 2.w,),
                      recipesItem(inx: 3),
                      SizedBox(height: 2.w,),
                      recipesItem(inx: 4),
                      SizedBox(height: 2.w,),
                      recipesItem(inx: 5),
                      SizedBox(height: 2.w,),
                      recipesItem(inx: 6),
                      SizedBox(height: 2.w,),
                      recipesItem(inx: 7),
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