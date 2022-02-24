// import 'package:amss/view/kconstant.dart';
// import 'package:flutter/material.dart';

// class SingleReport extends StatelessWidget {
//   const SingleReport({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Kunjan's Report"),
//       ),
//       backgroundColor: backgroundColor,
//       body: Padding(
//         padding: padding,
//         child: Column(
//           children: [
//             SizedBox(
//               height: 33,
//             ),
//             SizedBox(
//                 width: MediaQuery.of(context).size.width,
//                 child: ListView.builder(
//                     padding: null,
//                     itemCount: 8,
//                     shrinkWrap: true,
//                     itemBuilder: (context, index) {
//                       return SubjectAndMark();
//                     })),
//           ],
//         ),
//       ),
//       floatingActionButton: Container(
//         width: MediaQuery.of(context).size.width - 111,
//         height: 99,
//         decoration: BoxDecoration(
//           color: Color(0xffB6DCF6),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Row(
//                 children: [
//                   Expanded(
//                       child: Center(
//                     child: Text(
//                       "Result",
//                       style: TextStyle(
//                           color: Colors.green,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 14),
//                     ),
//                   )),
//                   Expanded(
//                       child: Text(
//                     "Pass",
//                     style: TextStyle(
//                         color: Colors.green,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 28),
//                   )),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Expanded(
//                       child: Center(
//                     child: Text(
//                       "GPA",
//                       style: TextStyle(
//                           color: Colors.green,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 14),
//                     ),
//                   )),
//                   Expanded(
//                       child: Text(
//                     "3.4",
//                     style: TextStyle(
//                         color: Colors.green,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 14),
//                   ))
//                 ],
//               ),
//               Container(
//                 height: 33,
//                 width: 77,
//                 color: Colors.green,
//                 child: Center(
//                     child: Text(
//                   "View",
//                   style: TextStyle(
//                       color: Colors.white, fontWeight: FontWeight.w500),
//                 )),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SubjectAndMark extends StatelessWidget {
//   const SubjectAndMark({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Expanded(
//                   flex: 1,
//                   child: Center(
//                       child: Text(
//                     "Math",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
//                   ))),
//               Expanded(
//                   flex: 1,
//                   child: Center(
//                       child: Text(
//                     "33",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//                   )))
//             ],
//           ),
//         ),
//         Divider(
//           indent: 33.0,
//           endIndent: 33.0,
//         )
//       ],
//     );
//   }
// }

import 'package:amss/view/kconstant.dart';
import 'package:amss/view/more/result/data.dart';
import 'package:amss/view/more/result/pdf.dart';
import 'package:amss/view/more/result/user.dart';
import 'package:amss/view/widget/appbar/profile_appbar.dart';
import 'package:flutter/material.dart';

class SingleReport extends StatefulWidget {
  @override
  _SingleReportState createState() => _SingleReportState();
}

class _SingleReportState extends State<SingleReport> {
  late List<User> users;
  int? sortColumnIndex;
  bool isAscending = false;

  @override
  void initState() {
    super.initState();

    this.users = List.of(allUsers);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Scaffold(
          backgroundColor: backgroundColor,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfileAppBar(
                  title: "result",
                  backArrow: true,
                ),
                SizedBox(
                  height: 22,
                ),
                // Image(image: AssetImage('assets/image/piechart.png')),
                // SizedBox(
                //   height: 22,
                // ),
                // Padding(
                //   padding: leftPadding,
                //   child: IconButton(
                //       padding: EdgeInsets.all(0),
                //       tooltip: "Download result",
                //       onPressed: () {},
                //       icon: Icon(Icons.file_download_sharp)),
                // ),
                buildDataTable(),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 1.3),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => WebViewTest()));
                    },
                    child: Container(
                      color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("view pdf"),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );

  Widget buildDataTable() {
    final columns = ['Subject', 'Practical\nMarks', 'Theory\nMarks', 'Total'];

    return Center(
      child: DataTable(
        columnSpacing: 33,
        columns: getColumns(columns),
        rows: getRows(users),
      ),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
            label: Text(column),
            //onSort: onSort,
          ))
      .toList();

  List<DataRow> getRows(List<User> users) => users.map((User user) {
        final cells = [
          user.subject,
          user.practicalMarks,
          user.theoryMarks,
          user.total
        ];

        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) =>
      cells.map((data) => DataCell(Text('$data'))).toList();
}
