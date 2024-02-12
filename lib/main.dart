import 'package:flutter/material.dart';
import 'package:flutter_hw/screen/screen_market.dart';
import 'package:flutter_hw/screen/screen_store.dart';
import 'package:flutter_hw/screen/screen_airbnb.dart';
import 'package:flutter_hw/screen/screen_home.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FlutterSizer(
      builder: (BuildContext , Orientation , ScreenType ) {
        return MaterialApp(
          title: 'Flutter Study1',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
            useMaterial3: true,
          ),
          home: const HomePage(),
          initialRoute: "/index",
          routes: {
            "/index" : (context) => const HomePage(),
            "/airbnb" : (context) => const CustomAirBnb(),
            "/market" : (context) => const MarketMain(),
            "/store" : (context) => const StoreHome()
          },
        );
      },
    );
  }
}