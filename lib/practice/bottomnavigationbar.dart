import 'package:amss/practice/custom_bottom_navigationbar.dart';
import 'package:amss/view/kconstant.dart';
import 'package:flutter/material.dart';

class MyHomePageS extends StatefulWidget {

  @override
  _MyHomePageSState createState() => _MyHomePageSState();
}

class _MyHomePageSState extends State<MyHomePageS> {
  int _currentIndex = 0;
  List tab =['aa','bb','cc','dd','ee'];
  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Custom Animated Bottom Navigation Bar"),
          backgroundColor: Colors.green[200],
        ),
        body: Center(child: Text("${tab[_currentIndex]}")),
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
          activeIcon: Icon(Icons.home,color:Colors.white,),
          icon: Icon(Icons.home,color: Colors.black,),
          title: Text('Home',style: TextStyle(color: Colors.white),),
          activeColor: color,
          inactiveColor: Colors.black,
          textAlign: TextAlign.center,

        ),
        BottomNavyBarItem(
          //activeIcon: Icon(Icons.message,color:Colors.black,),
          icon: Image(image: AssetImage("assets/icon/book.png"),height: 25.0,), 
          title: Text('E Learning',style: TextStyle(color: Colors.white),),
          activeColor: color,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          //activeIcon: Icon(Icons.message,color:Colors.black,),
          icon: Image(image: AssetImage("assets/icon/lib.png"),height: 25,),
          title: Text(
            'E library ',style: TextStyle(color: Colors.white),
          ),
          activeColor: color,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          //activeIcon: Icon(Icons.message,color:Colors.black,),
          icon: Image(image: AssetImage("assets/icon/cha.png"),height: 25,),
          title: Text('Message',style: TextStyle(color: Colors.white),),
          activeColor: color,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          //activeIcon: Icon(Icons.message,color:Colors.black,),
          icon: Padding(
            padding: const EdgeInsets.only(left:11.0),
            child: Image(image: AssetImage("assets/icon/more.png"),width: 18,),
          ),
          title: Text('More',style: TextStyle(color: Colors.white),),
          activeColor: color,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }




  Widget getBody() {
    List<Widget> pages = [
      Container(
        alignment: Alignment.center,
        child: Text("Home",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      Container(
        alignment: Alignment.center,
        child: Text("Users",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      Container(
        alignment: Alignment.center,
        child: Text("Messages",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      Container(
        alignment: Alignment.center,
        child: Text("Settings",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }


}
