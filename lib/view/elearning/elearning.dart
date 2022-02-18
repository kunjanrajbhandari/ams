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
      imageName: "mang.png", 
      colors: Color.fromARGB(255, 89, 240, 194),
      colors2:Color.fromARGB(255, 89, 240, 194),
    ),
    ElearningModel(
      title: "Atomic Habits", 
      subtitle: "Rahul Sah", 
      imageName: "image13.png", 
      colors: Color.fromARGB(255, 243, 179, 67),
      colors2:Color.fromARGB(255, 243, 179, 67),
     
    ),
    ElearningModel(
      title: "Atomic Habits", 
      subtitle: "Rahul Sah", 
      imageName: "image11.png", 
       colors: Color.fromARGB(255, 177, 160, 245),
      colors2:Color.fromARGB(255, 177, 160, 245),
      
    ),

    ElearningModel(
      title: "Atomic Habits", 
      subtitle: "Rahul Sah", 
      imageName: "image10.png", 
      colors: Color.fromARGB(255, 121, 206, 252),
      colors2: Color.fromARGB(255, 121, 206, 252),
      
      
    ),
    ElearningModel(
      title: "Atomic Habits", 
      subtitle: "Rahul Sah", 
      imageName: "image10.png", 
      colors: Colors.green,
      colors2: Colors.green,
      
      
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
                      child: elearning_list(context,title: elearningList[index].title, subtitle: elearningList[index].subtitle, imageName: elearningList[index].imageName, colors: elearningList[index].colors, colors2:elearningList[index].colors2 ),
                    ),
                  );
                },
              ),
            
            
          ],
        ),
      )
    );
  }

  Widget elearning_list(BuildContext context,{required String imageName, required String? title, required String subtitle, required Color colors,required Color colors2 }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Container(
            height:144.0, width: MediaQuery.of(context).size.width-33,
            decoration: BoxDecoration(
              
              gradient: LinearGradient(
                
                colors: [
                  colors, colors2
                  //Color.fromARGB(255, 106, 235, 228),Color(0xff2A9691)
              ]),
              boxShadow: [
                elevation(
                  offsetX: 4,
                  offsetY: 4,
                  blurRadius: 10,
                  spreadRadius: 1,
                  colors: Colors.black
                )
              ],
              borderRadius: BorderRadius.circular(24),
              color: colors
            ),
           child: Stack(
             children: [

               //start oval container ui
               Positioned(
                 top:-44,
                 left: MediaQuery.of(context).size.width/1.6,
                 child: RotationTransition(
                   turns: const AlwaysStoppedAnimation(360/380),
                   child: Container(
                     //margin: EdgeInsets.only(top: 40, left: 40, right: 40),
                     height: 111,width: 299,
                     decoration: BoxDecoration(
                       color: lighten(colors,30),
                       borderRadius: new BorderRadius.all(Radius.elliptical(150, 80)),
                     ),
                   ),
                 ),
               ),
               //end oval container ui


               Row(
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
                            child: Text("$title",style:  TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white, shadows: <Shadow>[
                            Shadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 2.0,
                              color:Colors.black.withOpacity(0.2))
                              ]),)),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/1.9,
                            child: Text("-$subtitle",style:  TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white,shadows: <Shadow>[
                            Shadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 2.0,
                              color:Colors.black.withOpacity(.2))]),)),
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
                                  }, icon: const Icon(Icons.folder),color: Colors.white,iconSize: 44,),
                                  IconButton(
                                    tooltip: "Materials",
                                    onPressed: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Materials()));
                                  }, icon: const Icon(Icons.folder_special_outlined),color: Colors.white, iconSize: 44,),
                                 // IconButton(onPressed: (){}, icon: Icon(Icons.folder_special_outlined),color: Colors.white,)
                                ],
                              ),
                            )
    
                        ],
                      )
                 ]
               ),
    
               
             ],
           ),
          ),
    );
  }
}