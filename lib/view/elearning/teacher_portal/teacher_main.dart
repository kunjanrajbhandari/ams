import 'package:amss/view/elearning/teacher_portal/assignment/create.dart';
import 'package:amss/view/elearning/teacher_portal/assignment/view_assignment.dart';
import 'package:amss/view/elearning/teacher_portal/material/create_material.dart';
import 'package:amss/view/elearning/teacher_portal/material/view_material.dart';
import 'package:amss/view/home/home.dart';
import 'package:amss/view/kconstant.dart';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:flutter/material.dart';

class TeacherPortalMain extends StatefulWidget {
  const TeacherPortalMain({Key? key}) : super(key: key);

  @override
  _TeacherPortalMainState createState() => _TeacherPortalMainState();
}

class _TeacherPortalMainState extends State<TeacherPortalMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: ProfileAppBarC(
        title: "Elearning",
      ),
      body: SingleChildScrollView(
        //physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ElearningListTeacher();
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class ElearningListTeacher extends StatelessWidget {
  const ElearningListTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(9),
      child: Container(
        width: MediaQuery.of(context).size.width - 55,
        height: 122,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 207, 160, 71),
              Color.fromARGB(255, 248, 213, 147),
            ]),
            //color: Color.fromARGB(255, 248, 213, 147),
            boxShadow: [elevation(offsetX: 1, offsetY: 1)]),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Class: 3A",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            // Divider(),
            Row(
              children: [
                Expanded(
                    child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Assignment",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                            child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => AsignmentView()));
                                },
                                icon: Icon(Icons.remove_red_eye)),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => CreateAssignment()));
                              },
                              icon: Icon(Icons.add))
                        ],
                      )
                    ],
                  ),
                )),
                VerticalDivider(),
                Expanded(
                    child: Center(
                        child: Column(
                  children: [
                    Text("Material",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ViewMaterial()));
                              },
                              icon: Icon(Icons.remove_red_eye)),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => CreateMaterial()));
                            },
                            icon: Icon(Icons.add))
                      ],
                    )
                  ],
                )))
              ],
            )
          ],
        ),
      ),
    );
  }
}
