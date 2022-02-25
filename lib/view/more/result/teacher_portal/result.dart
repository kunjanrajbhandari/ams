import 'package:amss/view/kconstant.dart';
import 'package:amss/view/more/result/teacher_portal/exam/result_class.dart';
import 'package:amss/view/more/result/teacher_portal/report/report.dart';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:flutter/material.dart';

class ExamTeacherPortal extends StatefulWidget {
  const ExamTeacherPortal({Key? key}) : super(key: key);

  @override
  _ExamTeacherPortalState createState() => _ExamTeacherPortalState();
}

class _ExamTeacherPortalState extends State<ExamTeacherPortal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ProfileAppBarC(
          title: "Exam",
          backArrow: true,
        ),
        backgroundColor: backgroundColor,
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 11,
            ),
            Center(
              child: Container(
                height: 166,
                width: MediaQuery.of(context).size.width - 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue.withOpacity(0.3),
                    boxShadow: [
                      //elevation(colors: Colors.grey.withOpacity(.1))
                    ]),
                child: ClipRRect(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Center(
                          child: Text(
                            "First Terminal Exam",
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          text: TextSpan(
                              text: '2022-01-03',
                              style: TextStyle(
                                color: Colors.green,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' - ',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: '2022-01-29',
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                )
                              ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          text: TextSpan(
                              text: 'Exam Type: ',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Terminal Exam',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ]),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const ResultClass()));
                              },
                              child: Container(
                                height: 33,
                                width: 88,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(4)),
                                child: Center(
                                    child: Text(
                                  "Result",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                )),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Report()));
                              },
                              child: Container(
                                height: 33,
                                width: 88,
                                decoration: BoxDecoration(
                                    //color: Colors.blue,
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(4)),
                                child: Center(
                                    child: Text(
                                  "Report",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w500),
                                )),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
