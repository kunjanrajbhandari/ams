import 'package:amss/view/kconstant.dart';
import 'package:flutter/material.dart';

class CheckAssignment extends StatefulWidget {
  const CheckAssignment({Key? key}) : super(key: key);

  @override
  _CheckAssignmentState createState() => _CheckAssignmentState();
}

class _CheckAssignmentState extends State<CheckAssignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Check Assignment")),
        backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 11,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Text("Status",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13))),
                    Expanded(
                        flex: 3,
                        child: Text("Description",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13))),
                    Expanded(
                        flex: 3,
                        child: Text("Submmited By",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13))),
                    Expanded(
                        flex: 2,
                        child: Text("Attachment",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13)))
                  ],
                ),
                Divider(),
                SizedBox(
                  height: 11,
                ),
                ListView.builder(
                  physics: ScrollPhysics(),
                  itemCount: 15,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return CheckAssignmentValue();
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

class CheckAssignmentValue extends StatelessWidget {
  const CheckAssignmentValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  )),
              Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text("sfszdfzsdfsfsdfsafasdfNa",
                        style: TextStyle(fontWeight: FontWeight.w500)),
                  )),
              Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text("Ram Sharma",
                        style: TextStyle(fontWeight: FontWeight.w500)),
                  )),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text("Na",
                        style: TextStyle(fontWeight: FontWeight.w500)),
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 11,
        ),
        Divider()
      ],
    );
  }
}
