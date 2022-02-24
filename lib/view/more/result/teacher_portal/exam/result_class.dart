import 'package:amss/view/kconstant.dart';
import 'package:amss/view/more/result/teacher_portal/exam/classroom_subject.dart';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:flutter/material.dart';

class ResultClass extends StatelessWidget {
  const ResultClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBarC(
        title: "Classroom",
        backArrow: true,
      ),
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 18.0, left: 18, right: 8),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Text("SN",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                Expanded(
                    flex: 2,
                    child: Text("ClassRoom",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                Expanded(
                    flex: 2,
                    child: Text("Teacher",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                Expanded(
                    flex: 1,
                    child: Text("Action",
                        style: TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
            Divider(
              endIndent: 11,
              thickness: 1.7,
            ),
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return ResultClasslist();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ResultClasslist extends StatelessWidget {
  const ResultClasslist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(flex: 1, child: Text("1", style: TextStyle())),
            Expanded(flex: 2, child: Text("2A", style: TextStyle())),
            Expanded(flex: 2, child: Text("Ram Pandy", style: TextStyle())),
            Expanded(
                flex: 1,
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ClassroomSubject()));
                    },
                    icon: Icon(Icons.remove_red_eye))),
          ],
        ),
        Divider()
      ],
    );
  }
}
