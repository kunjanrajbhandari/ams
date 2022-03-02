import 'package:amss/view/kconstant.dart';
import 'package:flutter/material.dart';

class EditAssignment extends StatefulWidget {
  const EditAssignment({Key? key}) : super(key: key);

  @override
  _EditAssignmentState createState() => _EditAssignmentState();
}

class _EditAssignmentState extends State<EditAssignment> {
  TextEditingController dateCtl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit")),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 8.0, right: 8.0, top: 22, bottom: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
                height: 49,
                child: TextField(
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 22),
                      label: const Text("Please Select Subject"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      hintText: 'Enter a search term',
                      hintStyle: const TextStyle(
                        fontSize: 14,
                      )),
                )),
            SizedBox(
              height: 22,
            ),
            SizedBox(
                height: 49,
                child: TextField(
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 22),
                      label: const Text("Topic"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      hintText: 'Enter a search term',
                      hintStyle: const TextStyle(
                        fontSize: 14,
                      )),
                )),
            SizedBox(
              height: 22,
            ),
            SizedBox(
                //height: 49,
                child: TextField(
              style: const TextStyle(
                fontSize: 15,
              ),
              //minLines: 2,
              maxLines: 5,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 22),
                  label: const Text("Description"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  hintText: 'Enter a search term',
                  hintStyle: const TextStyle(
                    fontSize: 14,
                  )),
            )),
            SizedBox(
              height: 22,
            ),
            SizedBox(
                //height: 49,
                child: TextField(
              controller: dateCtl,
              style: TextStyle(
                fontSize: 15,
              ),
              onTap: () async {
                DateTime date = DateTime(1900);
                FocusScope.of(context).requestFocus(FocusNode());

                date = (await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100)))!;

                dateCtl.text = date.toIso8601String();
              },
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 22),
                  label: const Text("Submission last date"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  hintText: 'Enter a search term',
                  hintStyle: const TextStyle(
                    fontSize: 14,
                  )),
            )),
            //UploadFile(),
            SizedBox(
              height: 22,
            ),
            //Create button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration: BoxDecoration(
                      boxShadow: [elevation()],
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(11)),
                  child: Center(
                    child: Text(
                      "Create",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class UploadFile extends StatelessWidget {
  const UploadFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2.5,
          height: 44,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(9),
              boxShadow: [elevation()]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Icon(Icons.attach_file), Text("Upload Files")],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Select a file to upload",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
