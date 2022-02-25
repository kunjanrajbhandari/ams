import 'package:amss/view/home/attendance/teacher_portal/subject_teacher/subject_list.dart';
import 'package:amss/view/kconstant.dart';
import 'package:flutter/material.dart';

class ClassList extends StatelessWidget {
  const ClassList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class list"),
        //backgroundColor: Colors.grey,
      ),
      backgroundColor: backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 22,
          ),
          Center(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SubjectList()));
                    },
                    child: ClassListItem(i: index + 1));
              },
            ),
          )
        ],
      ),
    );
  }
}

class ClassListItem extends StatelessWidget {
  int i;
  ClassListItem({Key? key, required this.i}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 11.0, bottom: 11, left: 18, right: 18),
      child: Container(
        width: MediaQuery.of(context).size.width - 55,
        height: 55.0,
        decoration: BoxDecoration(
            boxShadow: [elevation()],
            // gradient: LinearGradient(colors: [
            //   Colors.white,
            //   Color(0xffEEEEEE),
            // ]),
            color: Color(0xffEEEEEE),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 8),
                  child: Text(
                    "Class $i",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 8),
                  child: Text("Ram Pandey"),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(11.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SubjectList()));
                  },
                  child: Text("View Subject")),
            )
          ],
        ),
      ),
    );
  }
}
