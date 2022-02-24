import 'package:amss/view/kconstant.dart';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:flutter/material.dart';

class CustomTable extends StatelessWidget {
  CustomTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: ProfileAppBarC(
        title: "Payment",
        backArrow: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 22, left: 8, right: 8),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //table head
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Expanded(
                        flex: 1,
                        child: Text("SN",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    Expanded(
                        flex: 2,
                        child: Text("Date",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    Expanded(
                        flex: 2,
                        child: Text("Payment\nStatus",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    Expanded(
                        flex: 2,
                        child: Text("Amount",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    Expanded(
                        flex: 1,
                        child: Text("Pay",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ],
                ),
                Divider(
                  thickness: 2,
                  indent: 8,
                  endIndent: 8,
                ),
                //payment list
                ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return TableValue();
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TableValue extends StatefulWidget {
  TableValue({Key? key}) : super(key: key);

  @override
  State<TableValue> createState() => _TableValueState();
}

class _TableValueState extends State<TableValue> {
  bool noticeMinimize = false;
  String? valueText;
  final _textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(right: 18.0),
                    //start up arrow and downarrow for dropdown payment category
                    child: SizedBox(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          noticeMinimize == false
                              ? Padding(
                                  padding: const EdgeInsets.only(
                                      top: 9.0, left: 1.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      noticeMinimize = true;
                                      setState(() {});
                                    },
                                    child: SizedBox(
                                      height: 23,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/icon/next.png')),
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
                                      height: 15,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/icon/downarrow.png')),
                                    ),
                                  ),
                                )
                          //downarrow end
                          //Text("Notice",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    //end up arrow and downarrow for dropdown payment category
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Text(
                      "2022/11/22",
                    )),
                Expanded(flex: 2, child: Text("Due")),
                Expanded(flex: 2, child: Text("22222")),
                Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        _displayTextInputDialog(context);
                      },
                      child: Container(
                        height: 22,
                        width: 33,
                        decoration: BoxDecoration(
                            boxShadow: [
                              elevation(
                                  spreadRadius: 0.2, offsetX: 1, offsetY: 1)
                            ],
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(4.0)),
                        child: Center(
                            child: Text(
                          "pay",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    )),
              ],
            ),
          ),
          Divider(),
          noticeMinimize == true ? PaymentDetailsDropDown() : SizedBox()
        ],
      ),
    );
  }

  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: SizedBox(
              width: 55,
              child: Image(
                image: AssetImage("assets/image/esewa.png"),
                //width: 11,
                //height: 22,
              ),
            ),
            content: Container(
              height: 155,
              //color: Colors.red,
              child: SingleChildScrollView(
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [CategoryPaymentDialog(), CategoryPaymentDialog()],
                ),
              ),
            ),
            //TextField(
            //   onChanged: (value) {
            //     setState(() {
            //       valueText = value;
            //     });
            //   },
            //   controller: _textFieldController,
            //   decoration: InputDecoration(hintText: "amount"),
            // ),
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
  //
}

class PaymentDetailsDropDown extends StatefulWidget {
  const PaymentDetailsDropDown({Key? key}) : super(key: key);

  @override
  State<PaymentDetailsDropDown> createState() => _PaymentDetailsDropDownState();
}

class _PaymentDetailsDropDownState extends State<PaymentDetailsDropDown> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "All Payment for February 2022",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 11.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Expanded(
                      flex: 1,
                      child: Text("SN",
                          style: TextStyle(fontWeight: FontWeight.bold))),
                  Expanded(
                      flex: 3,
                      child: Text("Category",
                          style: TextStyle(fontWeight: FontWeight.bold))),
                  Expanded(
                      flex: 2,
                      child: Text("Amount",
                          style: TextStyle(fontWeight: FontWeight.bold))),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 11.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Expanded(flex: 1, child: Text("1")),
                  Expanded(flex: 3, child: Text("Admin GPON")),
                  Expanded(flex: 2, child: Text("222222")),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 11.0, left: 22),
              child: Text(
                "Total amount to be paid this month: Rs.22222",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 22,
            )
          ],
        ),
      ),
    );
  }
}

class CategoryPaymentDialog extends StatefulWidget {
  const CategoryPaymentDialog({Key? key}) : super(key: key);

  @override
  State<CategoryPaymentDialog> createState() => _CategoryPaymentDialogState();
}

class _CategoryPaymentDialogState extends State<CategoryPaymentDialog> {
  bool values = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Checkbox(
          value: values,
          onChanged: (bool? value) {
            setState(() {
              values = value!;
            });
          },
        ),
        Padding(
          padding: leftPadding / 2,
          child: Text(
            "Category1",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: leftPadding * 3,
          child: Text("Rs.33333"),
        )
      ],
    );
  }
}
