
import 'package:amss/view/kconstant.dart';
import 'package:amss/view/more/result/data.dart';
import 'package:amss/view/more/result/pdf.dart';
import 'package:amss/view/more/result/user.dart';
import 'package:amss/view/widget/appbar/profile_appbar.dart';
import 'package:flutter/material.dart';

class SortablePage extends StatefulWidget {
  @override
  _SortablePageState createState() => _SortablePageState();
}

class _SortablePageState extends State<SortablePage> {
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
                ProfileAppBar(title: "result",backArrow: true,),
                SizedBox(height: 22,),
                Image(image: AssetImage('assets/image/piechart.png')),
                
                  
                
                SizedBox(height: 22,),
                Padding(
                  padding: leftPadding,
                  child: IconButton(padding: EdgeInsets.all(0),
                    tooltip: "Download result",
                    onPressed: (){}, icon: Icon(Icons.file_download_sharp)),
                ),
                buildDataTable(),
                Padding(
                  padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width/1.3),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  WebViewTest()));
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
        final cells = [user.subject, user.practicalMarks, user.theoryMarks, user.total];

        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) =>
      cells.map((data) => DataCell(Text('$data'))).toList();

  
}