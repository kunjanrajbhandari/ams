import 'package:amss/view/elearning/teacher_portal/assignment/edit_assignment.dart';
import 'package:amss/view/elearning/teacher_portal/assignment/view.dart';
import 'package:amss/view/elearning/teacher_portal/material/edit_material.dart';
import 'package:amss/view/kconstant.dart';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:flutter/material.dart';

class ViewMaterial extends StatelessWidget {
  const ViewMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: ProfileAppBarC(
          title: "View",
          backArrow: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                itemCount: 3,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return ViewMaterialList();
                },
              ),
            ],
          ),
        ));
  }
}

class ViewMaterialList extends StatelessWidget {
  const ViewMaterialList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding * 2,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 168,
            decoration: BoxDecoration(
              boxShadow: [elevation()],
              color: Color(0xffD9DFF7),
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
                  richText(label: 'Download', value: 'Na'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => EditMaterial()));
                          },
                          icon: Icon(Icons.edit)),
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
