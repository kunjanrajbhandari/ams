
import 'package:amss/view/kconstant.dart';
import 'package:amss/view/widget/appbar/profile_appbar.dart';
import 'package:flutter/material.dart';

class AssignmentSingle extends StatelessWidget {
  String? fromDate;
  String? toDate;
  String? assignmentTitle;
  String? assignmentDescription;
  Color? colors;
   AssignmentSingle({ Key? key, this.colors, required this.assignmentTitle,required this.assignmentDescription, required this.fromDate, required this.toDate }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors?? color,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileAppBar(title: "Assignment",backArrow: true,),

          Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/2.1,top: 8.0),
            child: Text("$fromDate - $toDate",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 15),),
          ),
          SizedBox(height: 6.0,),
          Padding(
            padding: leftPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(assignmentTitle!, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),),
                SizedBox(height: 22,),
                 Center(
                   child: SizedBox( //color: Colors.red,
                   width: MediaQuery.of(context).size.width-22,
                   child: Text("Learn all defination which I prodived you from chapter 2. Learn all defination which I prodived you from chapter 2.Learn all defination which I prodived you from chapter 2.Learn all defination which I prodived you from chapter 2.", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16),)),
                 ),
                   SizedBox(height: 22,),
                  
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Container(
          
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle
          ),
          //color: color,
          child: IconButton(tooltip: "Submit Assignment",onPressed: (){}, icon: Icon(Icons.upload),color: Colors.white,iconSize: 33,),
        ),
      ),
      
    );
  }
}