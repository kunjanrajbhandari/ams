import 'package:amss/model/elibrary.dart';
import 'package:amss/model/online_class.dart';
import 'package:amss/view/kconstant.dart';
import 'package:amss/view/widget/appbar/profile_appbar.dart';
import 'package:flutter/material.dart';

class OnlineClass extends StatefulWidget {
  const OnlineClass({ Key? key }) : super(key: key);

  @override
  _OnlineClassState createState() => _OnlineClassState();
}

class _OnlineClassState extends State<OnlineClass> {
  List<String> dayList = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'];
  String? dropdownValue="Sunday";

  final elibraryList = [
    OnlineClassModel(courseName: 'Math', startTime: "9 AM", endTime: "10 AM", period: 1, colors: Colors.white),
    OnlineClassModel(courseName: 'English', startTime: "10 AM", endTime: "11 AM", period: 2, colors: Colors.white),
    OnlineClassModel(courseName: 'Social', startTime: "11 AM", endTime: "12 PM", period: 3, colors: Colors.white),
    OnlineClassModel(courseName: 'Computer', startTime: "12 PM", endTime: "1 PM", period: 4, colors: Colors.white),
    OnlineClassModel(courseName: 'Science', startTime: "1 AM", endTime: "2 PM", period: 5, colors: Colors.white),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEAF5FD),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileAppBar(title: "Online Class", backArrow: true,),
            SizedBox(height: 11,),
            Container(
              width: MediaQuery.of(context).size.width-19,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  elevation(
                    
                  ),

                 
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Hi Kunjan,",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                    Container(
                      
                      decoration: BoxDecoration(
                        //color: Colors.red,
                        border: Border.all( color: Colors.white),
                        borderRadius: BorderRadius.circular(11)
                      ),
                      width: MediaQuery.of(context).size.width/2,
                      child: DropdownButton<String>(
                        // hint: Padding(
                        //   padding: leftPadding,
                        //   child: const Text("Select School/College"),
                        // ),
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_downward, color: Colors.white,),
                        elevation: 33,
                        isExpanded: true,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: dayList.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding: leftPadding,
                              child: Text(value,style: TextStyle(color: Colors.red),),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 22,),
            //online class List
            ListView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: elibraryList.length,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: assignment_list(context,courseName: elibraryList[index].courseName!, colors: elibraryList[index].colors!, startTime: elibraryList[index].startTime!,endTime:elibraryList[index].endTime!, period: elibraryList[index].period!),
                  );
                },
              )
          ],
        ),
      ),
      
    );
  }
}
Container assignment_list(BuildContext context,{required String startTime,required String endTime, required int period, required Color colors, required String courseName,required}) {
    return Container(
          height:88.0, 
          width: MediaQuery.of(context).size.width-33,
          decoration: BoxDecoration( 
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
            //Colors.grey[300],
            boxShadow: [
               elevation()
              // elevation(
              //   offsetX: 5,offsetY: 5,
              //   blurRadius: 3,
              //   colors: Colors.grey.shade400),
              //  elevation(
              //       offsetX: -4,offsetY: -4,
              //       blurRadius: 3,
              //       colors: Colors.white.withOpacity(0.6)
              //     )
            ]
          ),
         child: Padding(
           padding: const EdgeInsets.all(0.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                   Container(
                     //color: Colors.red,
                     padding: const EdgeInsets.only(top: 2,left:22,right: 22),
                     width: MediaQuery.of(context).size.width-155,
                     child: Text("$startTime  -  $endTime" ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.black),),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(right:8.0),
                       child: Text("Period: $period" ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.black),),
                     ),
                 ],
               ),
              
               
               Container(
                // color: Colors.red,
                 padding: const EdgeInsets.only(top: 2,left:33,right: 22),
                 width: MediaQuery.of(context).size.width-111,
                 child: Text(courseName, style: const TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.black),)),
              

             ],
           ),
         ),
        );
  }
