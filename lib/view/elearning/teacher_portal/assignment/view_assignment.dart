import 'package:amss/view/elearning/teacher_portal/assignment/edit_assignment.dart';
import 'package:amss/view/elearning/teacher_portal/assignment/view.dart';
import 'package:amss/view/kconstant.dart';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:flutter/material.dart';

class AsignmentView extends StatelessWidget {
  const AsignmentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: Text("View"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                itemCount: 3,
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return AsignmentViewList();
                },
              ),
            ],
          ),
        ));
  }
}

class AsignmentViewList extends StatelessWidget {
  const AsignmentViewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding * 2,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 244,
            decoration: BoxDecoration(
              boxShadow: [elevation()],
              // gradient: LinearGradient(colors: [
              //   Color.fromARGB(255, 90, 108, 167),
              //   Color.fromARGB(255, 161, 182, 252)
              // ]),
              color: Color(0xffEEEEEE).withOpacity(0.9),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 11.0, left: 18, bottom: 8, right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  richText(label: 'Topic', value: 'Homework'),
                  richText(
                      label: 'Description',
                      value: 'Do this homework as soon as possible'),
                  richText(
                      label: 'Assignment Start Date',
                      value: 'February 15, 2022'),
                  richText(
                      label: 'Assignment End Date', value: 'February 22, 2022'),
                  richText(label: 'Assignment', value: 'NA'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => EditAssignment()));
                          },
                          icon: Icon(Icons.edit)),
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => CheckAssignment()));
                            },
                            icon: Icon(Icons.remove_red_eye)),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget richText({required String label, required String value}) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: RichText(
        text: TextSpan(
            text: "$label: ",
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: '$value',
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              )
            ]),
      ),
    );
  }
}
