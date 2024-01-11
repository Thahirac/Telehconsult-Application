

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hexcolor/hexcolor.dart';

import '../auth/login_page.dart';
import '../book/book_page.dart';
import '../favourate/favourate_page.dart';
import '../home/screens/home_page.dart';
import '../message/mesage_page.dart';



class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {


  var currentIndex;
  List<Widget>kk=[
    Home(),
    Favourate(),
    BookPage(),
    MessagePage(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       backgroundColor: Colors.white,

        body: kk[currentIndex],

        bottomNavigationBar: bottomnavbar(),




      ),
    );
  }

  Widget bottomnavbar(){
    return  Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color:
            Colors.grey.shade400.withOpacity(0.4), //color of shadow
            spreadRadius: 3, //spread radius
            blurRadius: 4, // blur radius
            offset: Offset(0, 2), // changes position of shadow
          ),
          //you can set more BoxShadow() here
        ],
      ),
      height: 84,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(18),
          topLeft: Radius.circular(18),
        ),
        child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: changePage,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed, // Fixed
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded,color: HexColor("#858EA9"),size: 25,),//Icon to be shown if not selected
                label: '',
                activeIcon: Container(
                    decoration:  BoxDecoration(
                        color: HexColor("#0EBE7E"),
                        shape: BoxShape.circle
                    ),
                    child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.home_rounded,color: Colors.white)
                    )
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite,color: HexColor("#858EA9"),size: 25,),//Icon to be shown if not selected
                label: '',
                activeIcon: Container(
                    decoration: BoxDecoration(
                        color: HexColor("#0EBE7E"),
                        shape: BoxShape.circle
                    ),
                    child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.favorite,color: Colors.white)
                    )
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu_book_outlined,color: HexColor("#858EA9"),size: 25,),//Icon to be shown if not selected
                label: '',
                activeIcon: Container(
                    decoration:  BoxDecoration(
                        color: HexColor("#0EBE7E"),
                        shape: BoxShape.circle
                    ),
                    child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.menu_book_outlined,color: Colors.white)
                    )
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sms,color: HexColor("#858EA9"),size: 25,),//Icon to be shown if not selected
                label: '',
                activeIcon: Container(
                    decoration: BoxDecoration(
                        color: HexColor("#0EBE7E"),
                        shape: BoxShape.circle
                    ),
                    child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.sms,color: Colors.white)
                    )
                ),
              ),
            ]
        ),
      ),
    );
  }


}






