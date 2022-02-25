import 'dart:ui';

import 'package:amss/view/home/attendance/teacher_portal/class_teacher/class_teacher.dart';
import 'package:amss/view/home/attendance/teacher_portal/subject_teacher/class_list.dart';
import 'package:amss/view/kconstant.dart';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:flutter/material.dart';

class AttendanceTeacher2 extends StatelessWidget {
  const AttendanceTeacher2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: ProfileAppBarC(
          title: "Attendance",
          backArrow: true,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 33,
            ),
            Padding(
              padding: padding,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ClassTeacherAttendance()));
                      },
                      child: AttendanceType(
                        name: 'Class Attendance',
                        myColor: Colors.orange,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ClassList()));
                      },
                      child: AttendanceType(
                        name: 'Subject Attendance',
                        myColor: Colors.blue,
                        image: Image(
                          image: AssetImage('assets/image/student.png'),
                          height: 155,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class AttendanceType extends StatelessWidget {
  String? name;
  Color? myColor;
  Image? image;
  AttendanceType({Key? key, this.name, this.myColor, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 33.0),
      child: Center(
        child: Column(
          children: [
            Container(
              height: 199,
              width: MediaQuery.of(context).size.width - 55,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.white),
                boxShadow: [elevation()],
                borderRadius: BorderRadius.circular(22),
                // gradient: LinearGradient(
                //     begin: Alignment.topCenter,
                //     end: Alignment.bottomCenter,
                //     colors: [lighten(myColor!, 88), myColor!])
                color: myColor ?? Colors.red,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(19),
                child: Stack(
                  children: [
                    Positioned(
                      top: -99,
                      left: -22,
                      child: Container(
                        height: 255,
                        width: 255,
                        decoration: BoxDecoration(
                            color: lighten(myColor!, 33),
                            shape: BoxShape.circle),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        image ??
                            Image(
                              image: AssetImage('assets/image/1.png'),
                              height: 155,
                            ),
                        // Padding(
                        //   padding: const EdgeInsets.only(bottom: 18.0),
                        //   child: Text(
                        //     name ?? "Class Teacher",
                        //     style: TextStyle(
                        //         color: Colors.white,
                        //         fontWeight: FontWeight.bold,
                        //         fontSize: 17),
                        //   ),
                        // ),
                      ],
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width / 3.4,
                      top: 155,
                      child: Text(
                        name ?? "Class Teacher",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 22),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
