
import 'package:amss/view/elearning/assignment_single.dart';
import 'package:amss/view/kconstant.dart';
import 'package:amss/view/widget/appbar/profile_appbar.dart';
import 'package:flutter/material.dart';

import '../../model/assignment.dart';

class Assignment extends StatefulWidget {
  const Assignment({ Key? key }) : super(key: key);

  @override
  _AssignmentState createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  final elearningList = [
    AssignmentModel(
      title: "Fraction and decimals", 
      description: "Learn all defination which I prodived you from chapter 2.", 
      toDate: "2022/10/22", 
      fromDate: "2022/11/22", 
      colors: const Color(0xff6D7FB8),
    ),
    AssignmentModel(
     title: "Fraction and decimals", 
      description: "Learn all defination which I prodived you from chapter 2.", 
      toDate: "2022/10/22", 
      fromDate: "2022/11/22", 
      colors:  color,
    ),
    AssignmentModel(
      title: "Fraction and decimals", 
      description: "Learn all defination which I prodived you from chapter 2.", 
      toDate: "2022/10/22", 
      fromDate: "2022/11/22",  
      colors: const Color.fromARGB(255, 91, 95, 89),
    ),

    AssignmentModel(
      title: "Fraction and decimals", 
      description: "Learn all defination which I prodived you from chapter 2.", 
      toDate: "2022/10/22", 
      fromDate: "2022/11/22", 
      colors:   Color(0xffDDB15E),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileAppBar(title: "Assignment",backArrow: true,),
            ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: elearningList.length,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: assignment_list(context,title: elearningList[index].title, description: elearningList[index].description, fromDate: elearningList[index].fromDate, toDate: elearningList[index].toDate, colors: elearningList[index].colors),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
      
    );
  }
}

Container assignment_list(BuildContext context,{required String fromDate,required String toDate, required String? title, required String description, required Color colors }) {
    return Container(
          height:166.0, width: MediaQuery.of(context).size.width-33,
          decoration: BoxDecoration( 
            boxShadow: [
              elevation(
                offsetX: 5,
                offsetY: 4,
                blurRadius: 10,
                spreadRadius: 1,
                colors: Color.fromARGB(255, 83, 83, 83).withOpacity(.3)
              )
            
              // BoxShadow(
              //   color: Colors.grey.withOpacity(0.7),
              //   spreadRadius: 1,
              //   blurRadius: 4,
              //   offset: Offset(5, 8), 
              // )
            ],
            borderRadius: BorderRadius.circular(24),
            color: colors
          ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Container(
               padding: EdgeInsets.only(top: 8,left:33,right: 22),
               width: MediaQuery.of(context).size.width-55,
               child: Text("$title",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white),)),
            Container(
              padding: EdgeInsets.only(top: 8,left:33,right: 22),
               width: MediaQuery.of(context).size.width-55,
               child: Text(description ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.white),)),
               Container(
                 //color: primaryColor,
                 padding: EdgeInsets.only(top: 8,left:33,right: 22),
                 
                width: MediaQuery.of(context).size.width,
                 child: Row(

                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("From: $fromDate" ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.white),),
                      Text("TO: $toDate" ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.white),),
                   
                   ],
                 ),
               ),
               
              //  GestureDetector(
              //    onTap: (){
              //       Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  AssignmentSingle(colors: colors,)));
              //    },
              //    child: Container(
              //      width: 77,
              //      height: 29,
              //      color: Colors.green,
              //      child: Center(child: Text("View",style: TextStyle(color: Colors.white),
              //      ),
              //   ),
              //    ),
              //  )
                    Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [
                       IconButton(tooltip: "View Assignment",onPressed: (){
                         Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  AssignmentSingle(colors: colors,assignmentTitle: title, assignmentDescription: description, fromDate: fromDate, toDate: toDate,)));
                       }, icon: const Icon(Icons.remove_red_eye),color: Colors.white,),
                       IconButton(tooltip: "Download Assignment",onPressed: (){
                         
                       }, icon: Icon(Icons.download),color: Colors.black,),
                       IconButton(tooltip: "Submit Assignment",onPressed: (){}, icon: Icon(Icons.upload),color: Colors.white,)
                     ],
                   ),
                

           ],
         ),
        );
  }
