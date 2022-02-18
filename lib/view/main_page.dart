
import 'dart:ui';

import 'package:amss/practice/custom_bottom_navigationbar.dart';
import 'package:amss/view/elearning/elearning.dart';
import 'package:amss/view/elibrary/elibrary.dart';
import 'package:amss/view/home/home.dart';
import 'package:amss/view/kconstant.dart';
import 'package:amss/view/message/chat_list.dart';
import 'package:amss/view/more/more.dart';
import 'package:flutter/material.dart';

import 'message/single_chat_page.dart';
import 'widget/appbar/profile_appbar.dart';


class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);
  static route() => MaterialPageRoute(builder: (_) => const MainPage());
   static const routeName = "/main-page";
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final tab = [const Home(),const Elearning(),const Elibrary(), const ChatPage(),const ViewMore()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: backgroundColor,
      body: tab[_currentIndex],

      bottomNavigationBar: _buildBottomBar()
    );
  }
  Widget _buildBottomBar(){
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: Colors.white,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 33,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          activeIcon: Icon(Icons.home,color:Colors.white,size: 31,),
          icon: Icon(Icons.home,color: Colors.black,size: 31,),
          title: Text('Home',style: TextStyle(color: Colors.white, fontSize: 11),),
          activeColor: color,
          inactiveColor: Colors.black,
          textAlign: TextAlign.center,

        ),
        BottomNavyBarItem(
          activeIcon: Icon(Icons.book_online,color:Colors.white,size: 26,),
          //Image(image: AssetImage("assets/icons/elearning-b.png"),height: 25.0,), 
          icon: Icon(Icons.book_online,color:Colors.black,size: 26,),
          //Image(image: AssetImage("assets/icons/elearning-b.png"),height: 25.0,), 
          title: Text('E Learning',style: TextStyle(color: Colors.white, fontSize: 11),),
          activeColor: color,
         // inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          activeIcon: Icon(Icons.library_books,color:Colors.white,size: 26,),
          icon: Icon(Icons.library_books,color:Colors.black,size: 26,),
          title: Text(
            'E library ',style: TextStyle(color: Colors.white, fontSize: 11),
          ),
          activeColor: color,
          //inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
           activeIcon: Icon(Icons.chat_rounded,color:Colors.white,size: 26,),
          icon: Icon(Icons.chat_rounded,color:Colors.black,size: 26,),
          //activeIcon: Icon(Icons.message,color:Colors.black,),
          //icon: Image(image: AssetImage("assets/icon/cha.png"),height: 25,),
          title: Text('Message',style: TextStyle(color: Colors.white, fontSize: 11),),
          activeColor: color,
          //inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
           activeIcon: Icon(Icons.more,color:Colors.white,size: 26,),
          icon: Icon(Icons.more,color:Colors.black,size: 26,),
          //activeIcon: Icon(Icons.message,color:Colors.black,),
          // icon: Padding(
          //   padding: const EdgeInsets.only(left:11.0),
          //   child: Image(image: AssetImage("assets/icon/more.png"),width: 18,),
          // ),
          title: Text('More',style: TextStyle(color: Colors.white, fontSize: 11),),
          activeColor: color,
          //inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
   
}