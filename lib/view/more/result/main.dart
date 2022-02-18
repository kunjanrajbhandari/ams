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
      backgroundColor:Color(0xffEAF5FD) ,
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
      padding: const EdgeInsets.only(top:28.0),
      child: Container(
            height:77.0, 
            width: MediaQuery.of(context).size.width-55,
            decoration: BoxDecoration( 
              borderRadius: BorderRadius.circular(24),
              color: Color(0xffFAFAFA),
              boxShadow: [
              elevation(
                offsetX: 5,
                offsetY: 4,
                blurRadius: 10,
                spreadRadius: 1,
                colors: Color.fromARGB(255, 83, 83, 83).withOpacity(.3)
              )
            ],
            ),
           child: Padding(
             padding: const EdgeInsets.all(0.0),
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