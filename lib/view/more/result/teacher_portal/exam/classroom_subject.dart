import 'package:amss/view/kconstant.dart';
import 'package:amss/view/more/result/teacher_portal/exam/add_mark.dart';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:flutter/material.dart';

class ClassroomSubject extends StatefulWidget {
  const ClassroomSubject({Key? key}) : super(key: key);

  @override
  _ClassroomSubjectState createState() => _ClassroomSubjectState();
}

class _ClassroomSubjectState extends State<ClassroomSubject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ProfileAppBarC(
          backArrow: true,
          title: "Classroom",
        ),
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 55.0,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'Examination:  ',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'First Terminal Examination',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          )
                        ]),
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Classroom:  ',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                        children: <TextSpan>[
                          TextSpan(
                            text: '2A',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          )
                        ]),
                  ),
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 11.0, right: 11),
                    child: SubjectAddMark(),
                  );
                })
          ],
        ));
  }
}

class SubjectAddMark extends StatelessWidget {
  const SubjectAddMark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Container(
        width: MediaQuery.of(context).size.width - 33,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
            boxShadow: [elevation()]),
        height: 66.0,
        child: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "English 1",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AddMark()));
                  },
                  child: Text("Add Marks"))
            ],
          ),
        ),
      ),
    );
  }
}
