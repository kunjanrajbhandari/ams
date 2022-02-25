import 'package:amss/view/home/attendance/calender.dart';
import 'package:amss/view/home/attendance/teacher_portal/teacher_main.dart';
import 'package:amss/view/home/attendance/teacher_portal/teacher_main2.dart';
import 'package:amss/view/home/event/calendar.dart';
import 'package:amss/view/home/event/event.dart';
import 'package:amss/view/home/gallery/gallery.dart';
import 'package:amss/view/kconstant.dart';
import 'package:amss/view/widget/appbar/profile_appbar.dart';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:amss/view/widget/up_down_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool noticeMinimize = false;
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).orientation == Orientation.portrait);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: ProfileAppBarC(),
      body: SingleChildScrollView(
        child: Column(
          /// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Appbar

            SizedBox(
              height: 22,
            ),
            Container(
                //color: Colors.red,
                //width: MediaQuery.of(context).size.width,
                height: 333.0,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(0),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AttendanceTeacher2()));
                          },
                          child: home_page_menu(context,
                              title: "Attendance",
                              imageName: 'check.png',
                              subtitle: "Check your attendance.",
                              colors1: Color.fromARGB(255, 106, 235, 228),
                              colors2: Color(0xff2A9691))),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => GalleryPage()));
                          },
                          child: home_page_menu(context,
                              title: "Gallery",
                              imageName: 'gallery.png',
                              subtitle: 'View your photo',
                              colors1: Color.fromARGB(255, 177, 160, 245),
                              colors2: Color(0xff603DEB))),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => EventPage()));
                          },
                          child: home_page_menu(context,
                              title: "Event",
                              imageName: 'events.png',
                              subtitle: "Check Event.",
                              colors1: Color.fromARGB(255, 255, 147, 153),
                              colors2: Color.fromARGB(255, 241, 88, 96))),
                    ],
                  ),
                )),

            //Events
            SizedBox(
              height: 19.0,
            ),
            Column(
              children: [
                Center(
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width - 22,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          elevation(
                              offsetX: 3,
                              offsetY: 3,
                              blurRadius: 7,
                              spreadRadius: 1,
                              colors: Color.fromARGB(255, 83, 83, 83)
                                  .withOpacity(.3))
                        ],
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.3), width: 1.5),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(18),
                          topLeft: Radius.circular(18),
                          bottomLeft: noticeMinimize == true
                              ? Radius.circular(18)
                              : Radius.circular(0),
                          bottomRight: noticeMinimize == true
                              ? Radius.circular(18)
                              : Radius.circular(0),
                        )),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: leftPadding * 3,
                          child: Text(
                            "Notice",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: rightPadding * 3,
                          child: Container(
                            //height: 33,
                            //color: Colors.red,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                noticeMinimize == false
                                    ? Padding(
                                        padding: const EdgeInsets.only(
                                            top: 9.0, left: 1.0),
                                        child: GestureDetector(
                                          onTap: () {
                                            noticeMinimize = true;
                                            setState(() {});
                                          },
                                          child: SizedBox(
                                            height: 15,
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/icon/uparrow.png')),
                                          ),
                                        ),
                                      )
                                    : Padding(
                                        padding:
                                            const EdgeInsets.only(top: 9.0),
                                        child: GestureDetector(
                                          onTap: () {
                                            noticeMinimize = false;
                                            setState(() {});
                                          },
                                          child: SizedBox(
                                            height: 15,
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/icon/downarrow.png')),
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
                noticeMinimize == false
                    ? Center(
                        child: Container(
                          height: 333,
                          width: MediaQuery.of(context).size.width - 22,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.3),
                                width: 1.5),
                          ),
                          child: Scrollbar(
                            child: ListView.builder(
                                padding: const EdgeInsets.all(16),
                                itemCount: 5,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "16 May, 2017",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            "Children's day  ",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            "It is a long established fact that a reader will be distracted by the readable content of a page when looking ",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              height: 11,
                                            ),
                                            Icon(Icons.attach_file),
                                          ],
                                        ),
                                        Divider(
                                          color: Colors.black.withOpacity(0.4),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
            SizedBox(
              height: 44,
            )
          ],
        ),
      ),
    );
  }

  Widget home_page_menu(BuildContext context,
      {required String imageName,
      required String title,
      String? subtitle = '',
      Color? colors1 = const Color.fromARGB(172, 111, 151, 233),
      Color colors2 = const Color.fromARGB(172, 111, 151, 233)}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 223,
        height: 288,
        decoration: BoxDecoration(
          boxShadow: [
            elevation(
                offsetX: 5,
                offsetY: 4,
                blurRadius: 10,
                spreadRadius: 1,
                colors: Color.fromARGB(255, 83, 83, 83).withOpacity(.3))
          ],
          borderRadius: BorderRadius.circular(33),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [colors1!, colors2]),
        ),
        //height: MediaQuery.of(context).size.height+22,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Container(
            height: 111,
            width: 2,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 3),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [colors1, colors2]),
              borderRadius: BorderRadius.circular(33),
              color: colors1,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(33),
              child: Stack(
                children: [
                  //   Positioned(
                  //    top:-44,
                  //     //right: -5,
                  //   //  left: .2,
                  //    //left: MediaQuery.of(context).size.width/1.6,
                  //    child: Container(
                  //      //margin: EdgeInsets.only(top: 40, left: 40, right: 40),
                  //      height: 222,width: 333,
                  //      decoration: BoxDecoration(
                  //        color: lighten(colors1,30),
                  //        shape: BoxShape.circle
                  //        //borderRadius: new BorderRadius.all(Radius.elliptical(150, 80)),
                  //      ),
                  //    ),
                  //  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 5,
                        child:
                            Image(image: AssetImage('assets/image/$imageName')),
                      ),
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        subtitle!,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      title == 'Attendance'
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                            height: 29,
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/icon/total_day.png'))),
                                        Padding(
                                          padding: leftPadding,
                                          child: RichText(
                                            text: TextSpan(
                                                text: '222 ',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 13),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: 'days',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 11),
                                                  )
                                                ]),
                                          ),
                                          //Text("222 days",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 13),),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                            height: 29,
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/icon/today.png'))),
                                        Padding(
                                          padding: leftPadding,
                                          child: RichText(
                                            text: TextSpan(
                                                text: '222 ',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 13),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: 'days',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 11),
                                                  )
                                                ]),
                                          ),

                                          //Text("222 days",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 13),),
                                        ),
                                      ],
                                    ),
                                  ]),
                            )
                          : SizedBox(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container homepage_topic(
      {Color? color, required String? text, required String? iconName}) {
    return Container(
      height: 111.0,
      width: 111.0,
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
          Text(
            "$text",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
