import 'package:amss/view/kconstant.dart';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:flutter/material.dart';

class ClassTeacherAttendance extends StatefulWidget {
  const ClassTeacherAttendance({Key? key}) : super(key: key);

  @override
  _ClassTeacherAttendanceState createState() => _ClassTeacherAttendanceState();
}

class _ClassTeacherAttendanceState extends State<ClassTeacherAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: ProfileAppBarC(
        title: "Class Attendance",
        backArrow: true,
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 99),
              child: ListView.builder(
                  itemCount: 22,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (Context, index) {
                    return CheckStudent();
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "save",
        onPressed: () {},
        child: Icon(Icons.save),
      ),
    );
  }
}

class CheckStudent extends StatefulWidget {
  const CheckStudent({Key? key}) : super(key: key);

  @override
  State<CheckStudent> createState() => _CheckStudentState();
}

class _CheckStudentState extends State<CheckStudent> {
  bool values = false;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              "Ram Pandey",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 1,
            child: Checkbox(
              value: values,
              onChanged: (bool? value) {
                setState(() {
                  values = value!;
                });
              },
            ),
          ),
        ],
      ),
      Divider()
    ]);
  }
}
