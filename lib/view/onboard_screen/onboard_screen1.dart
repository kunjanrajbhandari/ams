import 'package:flutter/material.dart';

class onboardScreen1 extends StatelessWidget {
  const onboardScreen1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const SizedBox(height: 33.0,),
          const Image(image: AssetImage('assets/icon/man.png')),
          const Text("Find Your Favourite Lesson",style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),),
          const SizedBox(height: 33.0,),
          SizedBox(
            width: MediaQuery.of(context).size.width-55,
            child: Center(child: Text("Anyone Can join the millions of members in our community to learn cutting edge skills.",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.grey),))),
        ],
      ),
    );
  }
}