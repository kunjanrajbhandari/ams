import 'package:amss/view/elearning/assignment.dart';
import 'package:amss/view/elearning/material.dart';
import 'package:amss/view/kconstant.dart';
import 'package:amss/model/model.dart';
import 'package:amss/view/widget/appbar/profile_appbar.dart';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:amss/view/widget/oval_container.dart';
import 'package:amss/model/model.dart';
import 'package:amss/view/kconstant.dart';
import 'package:flutter/material.dart';

import '../widget/appbar/profile_appbarC.dart';

class Elearning extends StatefulWidget {
  const Elearning({ Key? key }) : super(key: key);

  @override
  _ElearningState createState() => _ElearningState();
}

class _ElearningState extends State<Elearning> {

  final elearningList = [
    ElearningModel(
      title: "Atomic Habits", 
      subtitle: "Rahul Sah", 
      imageName: "image12.png", 
      colors: color,
    ),
    ElearningModel(
      title: "Atomic Habits", 
      subtitle: "Rahul Sah", 
      imageName: "image13.png", 
      colors: const   Color(0xffDDB15E),
    ),
    ElearningModel(
      title: "Atomic Habits", 
      subtitle: "Rahul Sah", 
      imageName: "image11.png", 
      colors: const Color(0xff6D7FB8),
    ),

    ElearningModel(
      title: "Atomic Habits", 
      subtitle: "Rahul Sah", 
      imageName: "image10.png", 
      colors: const Color.fromARGB(255, 91, 95, 89),
    )
  ];
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBarC( title: "E learning",),
      backgroundColor: backgroundColor,
      body:SingleChildScrollView(
        child: Column(
          children: [
            
         // Image(image: AssetImage('assets/image/image1.png'))
           
              //height: MediaQuery.of(context).size.height/1.429,
              ListView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: elearningList.length,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: elearning_list(context,title: elearningList[index].title, subtitle: elearningList[index].subtitle, imageName: elearningList[index].imageName, colors: elearningList[index].colors),
                    ),
                  );
                },
              ),
            
            
          ],
        ),
      )
    );
  }

  Container elearning_list(BuildContext context,{required String imageName, required String? title, required String subtitle, required Color colors }) {
    return Container(
          height:144.0, width: MediaQuery.of(context).size.width-33,
          decoration: BoxDecoration(
            boxShadow: [
              elevation(
                offsetX: 4,
                offsetY: 9,
                blurRadius: 2,
                spreadRadius: 1,
                colors: lighten(darken(colors,40))
              )
            ],
            borderRadius: BorderRadius.circular(24),
            color: colors
          ),
         child: Row(
           children:[
             //Padding(padding: EdgeInsets.all(9)),
             SizedBox(
               width: 144,
               height: 140,
               child: Image(image: AssetImage('assets/image/$imageName'))),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width/1.9,
                      child: Text("$title",style: const TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white),)),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/1.9,
                      child: Text("-$subtitle",style: const TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),)),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/1.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                              tooltip: "Assignment",
                              onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Assignment()));
                            }, icon: const Icon(Icons.folder),color: Colors.white,iconSize: 39,),
                            IconButton(
                              tooltip: "Assignment",
                              onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Materials()));
                            }, icon: const Icon(Icons.folder_special_outlined),color: Colors.white, iconSize: 39,),
                           // IconButton(onPressed: (){}, icon: Icon(Icons.folder_special_outlined),color: Colors.white,)
                          ],
                        ),
                      )

                  ],
                )
           ]
         ),
        );
  }
}