import 'package:flutter/material.dart';

class OnboardScreen2 extends StatelessWidget {
  const OnboardScreen2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const SizedBox(height: 33.0,),
          const Image(image: AssetImage('assets/icon/girl.png')),
          const Text("Discover Useful Resources",style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),),
          const SizedBox(height: 33.0,),
          SizedBox(
            width: MediaQuery.of(context).size.width-55,
            child: const Center(child: Text("This is an online learning app that gives access to all comprehensive resources.",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.grey),))),

          
        ],
      ),
    );
  }
}