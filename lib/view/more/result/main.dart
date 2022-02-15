import 'package:amss/view/kconstant.dart';
import 'package:amss/view/more/result/result.dart';
import 'package:amss/view/widget/appbar/profile_appbar.dart';
import 'package:flutter/material.dart';

class ResultMain extends StatefulWidget {
  const ResultMain({ Key? key }) : super(key: key);

  @override
  _ResultMainState createState() => _ResultMainState();
}

class _ResultMainState extends State<ResultMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          ProfileAppBar(title: "Result", backArrow: true,),
          GestureDetector(
            onTap:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  SortablePage()));
            },
            child: assignment_list(context,courseName: "1st Terminal")),
          assignment_list(context,courseName: "2st Terminal"),
          assignment_list(context,courseName: "3st Terminal"),
          assignment_list(context,courseName: "4st Terminal"),
        ],
      ),
    );
  }
}

Padding assignment_list(BuildContext context,{required String courseName,}) {
    return Padding(
      padding: const EdgeInsets.only(top:18.0),
      child: Container(
            height:88.0, 
            width: MediaQuery.of(context).size.width-33,
            decoration: BoxDecoration( 
              borderRadius: BorderRadius.circular(24),
              color: Color(0xffFAFAFA),
              boxShadow: [
                elevation(colors: darken(Colors.grey, 33))
              ]
            ),
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                //  Row(
                //    mainAxisAlignment: MainAxisAlignment.spaceAround,
                //    crossAxisAlignment: CrossAxisAlignment.end,
                //    children: [
                //      Container(
                //        //color: Colors.red,
                //        padding: const EdgeInsets.only(top: 8,left:33,right: 22),
                //        width: MediaQuery.of(context).size.width-155,
                //        child: Text("$startTime  -  $endTime" ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.black),),
                //        ),
                //        Text("Period: $period" ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.black),),
                //    ],
                //  ),
                
                 
                 Container(
                  // color: Colors.red,
                   padding: const EdgeInsets.only(top: 8,left:49,right: 22),
                   width: MediaQuery.of(context).size.width-111,
                   child: Text(courseName, style: const TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.black),)),
                

               ],
             ),
           ),
          ),
    );
  }