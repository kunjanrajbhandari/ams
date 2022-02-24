import 'package:amss/view/kconstant.dart';
import 'package:amss/view/widget/appbar/profile_appbar.dart';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:flutter/material.dart';

class AddMark extends StatefulWidget {
  const AddMark({Key? key}) : super(key: key);

  @override
  _AddMarkState createState() => _AddMarkState();
}

class _AddMarkState extends State<AddMark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: ProfileAppBarC(
        title: "Add Mark",
        backArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 18.0, left: 8.0, right: 8.0),
        child: Column(
          children: [
            Row(
              children: [
                // Expanded(
                //     flex: 1,
                //     child: Text("SN",
                //         style: TextStyle(
                //             fontWeight: FontWeight.bold, fontSize: 11))),
                Expanded(
                    flex: 1,
                    child: Text("Student",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 11))),
                Expanded(
                    flex: 1,
                    child: Text("Theory\n(FM/PM)",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 11))),
                Expanded(
                    flex: 1,
                    child: Text("Pratical\n(FM/PM)",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 11))),
                Expanded(
                    flex: 1,
                    child: Text("OM\n(Theory)",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 11))),
                Expanded(
                    flex: 1,
                    child: Text("OM\n(Pratical)",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 11))),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: MarkList(),
                  );
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Save File",
        child: Icon(Icons.save),
      ),
    );
  }
}

class MarkList extends StatelessWidget {
  const MarkList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            //Expanded(flex: 1, child: Text("1", style: TextStyle())),
            Expanded(flex: 1, child: Text("Ram Paudel", style: TextStyle())),
            Expanded(flex: 1, child: Text("80", style: TextStyle())),
            Expanded(flex: 1, child: Text("20", style: TextStyle())),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(right: 2.0),
                child: SizedBox(
                  height: 33,
                  child: TextFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 2.0),
                child: SizedBox(
                  height: 33,
                  child: TextFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ),
            ),
          ],
        ),
        Divider()
      ],
    );
  }
}
