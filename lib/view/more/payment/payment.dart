import 'dart:math';

import 'package:amss/view/kconstant.dart';
import 'package:amss/view/more/payment/payment_model.dart';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  List<String> paymentTypes = [
    'Due',
    'All Payment',
    'Payment History',
  ];
  String? dropdownValue = "Due";
  bool noticeMinimize = false;

  final _textFieldController = TextEditingController();
  String? valueText;

  final allPayment = <PaymentModel>[
    PaymentModel(
        date: "2022/11/22",
        paymentStatus: "due",
        amount: 22222.0,
        pay: ElevatedButton(
          onPressed: () {},
          child: Text("pay"),
        )),
    PaymentModel(
        date: "2022/11/23",
        paymentStatus: "due",
        amount: 99999.0,
        pay: ElevatedButton(
          onPressed: () {},
          child: Text("pay"),
        )),
    PaymentModel(
        date: "2022/11/22",
        paymentStatus: "due",
        amount: 22222.0,
        pay: ElevatedButton(
          onPressed: () {},
          child: Text("pay"),
        )),
    PaymentModel(
        date: "2022/11/23",
        paymentStatus: "due",
        amount: 99999.0,
        pay: ElevatedButton(
          onPressed: () {},
          child: Text("pay"),
        )),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: ProfileAppBarC(
          title: "Payment",
          backArrow: true,
        ),
        body: Padding(
          padding: topPadding * 4,
          child: Column(
            children: [
              Padding(
                padding: leftPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Payment Details",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.0),
                    ),
                    Padding(
                      padding: rightPadding,
                      child: Container(
                        padding: const EdgeInsets.only(right: 11, left: 11),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(22)),
                        width: MediaQuery.of(context).size.width / 2,
                        child: Center(
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            icon: const Icon(
                              Icons.arrow_downward,
                              color: Colors.black,
                            ),
                            elevation: 33,
                            isExpanded: true,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: paymentTypes
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                  padding: leftPadding,
                                  child: Text(
                                    value,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                //table
              ),
              SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DataTable(
                  columnSpacing: 7,
                  dataRowHeight: 55,
                  //verti: ,
                  columns: [
                    DataColumn(label: Text("list")),
                    DataColumn(label: Text("Date")),
                    DataColumn(label: Text("Payment\nStatus")),
                    DataColumn(label: Text("Amount")),
                    DataColumn(label: Text("Action")),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(up_down_arrow(), onTap: () {
                        DataTable(
                          columns: const <DataColumn>[
                            DataColumn(
                              label: Text(
                                'Name',
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Age',
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Designation',
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ),
                          ],
                          rows: const <DataRow>[
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Mohit')),
                                DataCell(Text('23')),
                                DataCell(Text('Associate Software Developer')),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Akshay')),
                                DataCell(Text('25')),
                                DataCell(Text('Software Developer')),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Deepak')),
                                DataCell(Text('29')),
                                DataCell(Text('Team Lead ')),
                              ],
                            ),
                          ],
                        );
                      }),
                      DataCell(Text('2022/11/22')),
                      DataCell(Text('Due')),
                      DataCell(Text('1454')),
                      DataCell(ElevatedButton(
                        onPressed: () {
                          _displayTextInputDialog(context);
                        },
                        child: Text("pay"),
                      ))
                    ]),
                    DataRow(cells: [
                      DataCell(up_down_arrow(), onTap: () {
                        DataTable(
                          columns: const <DataColumn>[
                            DataColumn(
                              label: Text(
                                'Name',
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Age',
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Designation',
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ),
                          ],
                          rows: const <DataRow>[
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Mohit')),
                                DataCell(Text('23')),
                                DataCell(Text('Associate Software Developer')),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Akshay')),
                                DataCell(Text('25')),
                                DataCell(Text('Software Developer')),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Deepak')),
                                DataCell(Text('29')),
                                DataCell(Text('Team Lead ')),
                              ],
                            ),
                          ],
                        );
                      }),
                      DataCell(Text('2022/11/22')),
                      DataCell(Text('Due')),
                      DataCell(Text('1454')),
                      DataCell(ElevatedButton(
                        onPressed: () {
                          _displayTextInputDialog(context);
                        },
                        child: Text("pay"),
                      ))
                    ]),

                    //   DataRow(cells: [
                    //     DataCell(up_down_arrow()),
                    //     DataCell(Text('2022/11/22')),
                    //     DataCell(Text('Due')),
                    //     DataCell(Text('1234')),
                    //     DataCell(ElevatedButton(onPressed: (){}, child: Text("pay"),))
                    // ])
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget up_down_arrow() {
    return GestureDetector(
      onTap: () {
        DropDownTable();
      },
      child: Container(
        //height: 33,
        //color: Colors.red,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            noticeMinimize == false
                ? Padding(
                    padding: const EdgeInsets.only(top: 9.0, left: 1.0),
                    child: GestureDetector(
                      onTap: () {
                        noticeMinimize = true;
                        setState(() {});
                      },
                      child: Transform.rotate(
                        angle: 180 * pi / 180,
                        child: SizedBox(
                          height: 11,
                          child: Image(
                              image: AssetImage('assets/icon/uparrow.png')),
                        ),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(top: 9.0),
                    child: GestureDetector(
                      onTap: () {
                        noticeMinimize = false;
                        setState(() {});
                      },
                      child: SizedBox(
                        height: 11,
                        child: Image(
                            image: AssetImage('assets/icon/downarrow.png')),
                      ),
                    ),
                  )
            //downarrow end
            //Text("Notice",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }

  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: SizedBox(
              height: 22,
              child: const Image(
                image: AssetImage("assets/image/esewa.png"),
              ),
            ),
            content: TextField(
              onChanged: (value) {
                setState(() {
                  valueText = value;
                });
              },
              controller: _textFieldController,
              decoration: InputDecoration(hintText: "amount"),
            ),
            actions: <Widget>[
              FlatButton(
                color: Colors.green,
                textColor: Colors.white,
                child: Text('pay'),
                onPressed: () {
                  setState(() {
                    //codeDialog = valueText;
                    Navigator.pop(context);
                  });
                },
              ),
            ],
          );
        });
  }
}

class DropDownTable extends StatelessWidget {
  const DropDownTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DataTable(
        columnSpacing: 7,
        dataRowHeight: 55,
        //verti: ,
        columns: [
          // DataColumn(label: Text("list")),
          DataColumn(label: Text("Date")),
          DataColumn(label: Text("Payment\nStatus")),
          DataColumn(label: Text("Amount")),
          DataColumn(label: Text("Action")),
        ],
        rows: [
          DataRow(cells: [
            //DataCell(up_down_arrow()),
            DataCell(Text('2022/11/22')),
            DataCell(Text('Due')),
            DataCell(Text('1454')),
            DataCell(ElevatedButton(
              onPressed: () {
                //_displayTextInputDialog(context);
              },
              child: Text("pay"),
            ))
          ]),
          DataRow(cells: [
            //DataCell(up_down_arrow()),
            DataCell(Text('2022/11/22')),
            DataCell(Text('Due')),
            DataCell(Text('1234')),
            DataCell(ElevatedButton(
              onPressed: () {},
              child: Text("pay"),
            ))
          ])
        ],
      ),
    );
  }
}
