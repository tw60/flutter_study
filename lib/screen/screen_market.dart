import 'package:flutter/material.dart';
import 'package:flutter_hw/screen/market/screen_market_around.dart';
import 'package:flutter_hw/screen/market/screen_market_chat.dart';
import 'package:flutter_hw/screen/market/screen_market_home.dart';
import 'package:flutter_hw/screen/market/screen_market_myinfo.dart';
import 'package:flutter_hw/screen/market/screen_market_neighbor.dart';

class MarketMain extends StatefulWidget{
  const MarketMain({super.key});

  @override
  State<MarketMain> createState() => _MarketMain();
}

class _MarketMain extends State<MarketMain>{
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: IndexedStack(
            index: _selectedIndex,
            children: const [
              MarketHomePage(),MarketNeighborPage(), MarketAroundPage(), MarketChatPage(),MarketMyInfoPage()
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            fixedColor: Colors.lightBlueAccent,
            backgroundColor: Colors.white,
            type:BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: '홈'),
              BottomNavigationBarItem(icon: Icon(Icons.copy), label: '동네생활'),
              BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined), label: '내 근처'),
              BottomNavigationBarItem(icon: Icon(Icons.chat_outlined), label: '채팅'),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: '나의 정보'),
            ]
          ),
        )
    );
  }
}