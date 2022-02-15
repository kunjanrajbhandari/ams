
import 'package:amss/view/home/attendance/calender.dart';
import 'package:amss/view/home/event/calendar.dart';
import 'package:amss/view/home/event/event.dart';
import 'package:amss/view/kconstant.dart';
import 'package:amss/view/widget/appbar/profile_appbar.dart';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:amss/view/widget/up_down_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
  bool noticeMinimize = false;
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).orientation == Orientation.portrait);
    return Scaffold(
      appBar: ProfileAppBarC(),
      body: SingleChildScrollView(
            child: Column(
            /// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Appbar
                
                  SizedBox(height: 22,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 277.0,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                               Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  Attendance()));
                            },
                            child: home_page_menu(context, title:"Attendance",imageName: 'check.png',subtitle: "Check your attendance.",colors: Color.fromARGB(255, 104, 109, 101))),
          
                          GestureDetector(
                            onTap: (){
                             // Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  GalleryPage()));
                            },
                            child: home_page_menu(context, title:"Gallery",imageName: 'gallery.png',subtitle: 'View your photo' ,colors: Color.fromARGB(255, 219, 170, 77))),
                          GestureDetector(
                            onTap: (){
                               Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  EventPage()));
                            },
                            child: home_page_menu(context, title:"Event",imageName: 'events.png',subtitle: "Check Event.",colors: Color.fromARGB(255, 89, 107, 165) )),
                        ],
                      ),
          
                    )
                  ),
                
                  //Events
                  SizedBox(height: 44.0,),
                  Column(
                    children: [
                      Center(
                        child: Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width-22,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.withOpacity(0.3),width: 1.5),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(18),
                              topLeft: Radius.circular(18),
                              bottomLeft: noticeMinimize==true?Radius.circular(18):Radius.circular(0),
                              bottomRight: noticeMinimize==true?Radius.circular(18):Radius.circular(0),
                            )
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: leftPadding*3,
                                child: Text("Notice",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: rightPadding*3,
                                child: Container(
                                  //height: 33,
                                  //color: Colors.red,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                     
                                      noticeMinimize == false? Padding(
                                        padding: const EdgeInsets.only(top:9.0,left: 1.0),
                                        child: GestureDetector(
                                          onTap: (){
                                            noticeMinimize =true;
                                            setState(() {});
                                          },
                                          child: SizedBox(
                                            height: 15,
                                            child: Image(image: AssetImage('assets/icon/uparrow.png')),
                                          ),
                                        ),
                                      ):Padding(
                                        padding: const EdgeInsets.only(top:9.0),
                                        child: GestureDetector(
                                            onTap: (){
                                            noticeMinimize =false;
                                            setState(() {});
                                          },
                                          child: SizedBox(
                                            height: 15,
                                            child: Image(image: AssetImage('assets/icon/downarrow.png')),
                                          ),
                                        ),
                                      )
                                      //downarrow end
                                      //Text("Notice",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ),
                              )
    
                              
                            ],
                          ),
                        ),
                      ),
                    noticeMinimize == false? Center(
                        child: Container(
                          height: 333,
                          width: MediaQuery.of(context).size.width-22,
                          decoration: BoxDecoration(
                            
                            border: Border.all(color: Colors.grey.withOpacity(0.3),width: 1.5),
                          ),
                          child: Scrollbar(
                            child: ListView.builder(
                              padding: const EdgeInsets.all(16),
                              itemCount: 5,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context,index){
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("16 May, 2017",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.grey),),
                                      Padding(
                                        padding: const EdgeInsets.only(top:8.0),
                                        child: Text("Children's day  ",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.black),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top:8.0),
                                        child: Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking ",style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal,color: Colors.black),),
                                      ),
                                      
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                          
                                          SizedBox(height: 11,),
                                          Icon(Icons.attach_file),
                                        ],
                                      )
                          
                                    ],
                                  ),
                                );
                          
                              }
                            ),
                          ),
                        ),
                      ):SizedBox(),
                    ],
                  ),
                  SizedBox(height: 44,)
              ],
              
            ),
          ),
    );
      
  }

  Padding home_page_menu(BuildContext context,{required String imageName, required String title, String? subtitle='', Color? colors = const Color.fromARGB(172, 111, 151, 233) }){
    return Padding(
                padding: leftPadding*2,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: 219,
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(33),
                    color: colors,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height/5,
                        child: Image(image: AssetImage('assets/image/$imageName')),
                      ),
                      

                      Text(title,style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                      Text(subtitle!,style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),),

                      title == 'Attendance'?Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                              Row(
                                
                                children: [
                                  SizedBox(
                                    height: 29,
                                    child: Image(image: AssetImage('assets/icon/total_day.png'))),
                                    Padding(
                                      padding: leftPadding,
                                      child: RichText(
                                        text: TextSpan(
                                            text: '222 ',
                                            style: TextStyle(
                                                color: Colors.white, fontWeight: FontWeight.w500,fontSize: 13),
                                            children: <TextSpan>[
                                              TextSpan(text: 'days',
                                                  style: TextStyle(
                                                     color: Colors.white, fontWeight: FontWeight.bold,fontSize: 11),
                                              )
                                            ]
                                        ),
                                      ),
                                      //Text("222 days",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 13),),
                                    ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 29,
                                    child: Image(image: AssetImage('assets/icon/today.png'))),
                                    Padding(
                                      padding: leftPadding,
                                      child: RichText(
                                        text: TextSpan(
                                            text: '222 ',
                                            style: TextStyle(
                                                color: Colors.white, fontWeight: FontWeight.w500,fontSize: 13),
                                            children: <TextSpan>[
                                              TextSpan(text: 'days',
                                                  style: TextStyle(
                                                     color: Colors.white, fontWeight: FontWeight.bold,fontSize: 11),
                                              )
                                            ]
                                        ),
                                      ),
                                      
                                      //Text("222 days",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 13),),
                                    ),
                                ],
                              ),
                                
                          ]
                        ),
                      ): SizedBox(),
                    ],
                  ),
                  
                ),
              );
  }

  Container homepage_topic({Color? color, required String? text, required String? iconName}) {
    return Container(
            height: 111.0,width: 111.0,
            decoration: BoxDecoration(
              color: color ?? Colors.red,
              borderRadius: BorderRadius.circular(19),
              boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(8.0, 8.0), //(x,y)
                    blurRadius: 11.0,
                  ),
                ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 55,
                  child: Image(image: AssetImage('assets/icon/$iconName'))),

                  Text("$text",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  
              ],
            ),
          );
  }
}