import 'package:amss/view/kconstant.dart';
import 'package:amss/view/more/result/result.dart';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:flutter/material.dart';

class ResultMainPage extends StatefulWidget {
  const ResultMainPage({ Key? key }) : super(key: key);

  @override
  _ResultMainPageState createState() => _ResultMainPageState();
}

class _ResultMainPageState extends State<ResultMainPage> {
  List<String> schoolName = ['2073','2074','2075','2076','2077','2078'];
  String? dropdownValue ='2078';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: ProfileAppBarC(title: "Exam", backArrow: true,),
      body: Column(
        children: [
          SizedBox(height: 11,),
          Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(11)
              ),
              width: MediaQuery.of(context).size.width-22,
              child: Center(
                child: DropdownButton<String>(
                  
                  hint: Padding(
                    padding: leftPadding,
                    child: const Text("Select Exam Year"),
                  ),
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 33,
                  isExpanded: true,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: schoolName.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      onTap: (){

                      },
                      child: Padding(
                        padding: leftPadding,
                        child: Text(value),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),


        SizedBox(height: 11,),
           result_list(context,status: 'Pending'),
           result_list(context,status: 'Published')
        ],
      ),
    );
  }

  Widget result_list(BuildContext context,{required String status}) {
    return dropdownValue !=null ?Padding(
      padding: const EdgeInsets.only(top:18.0),
      child: GestureDetector(
        onTap: (){
          status!= 'Pending'?Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  SortablePage())):null;
        },
        child: Container(
              width: MediaQuery.of(context).size.width-22,
              height: 77,
              decoration: BoxDecoration(
                boxShadow: [
                  elevation()
                ],
                color: status == 'Pending'?Color(0XFFE6C1C2):Colors.grey.shade200,
                borderRadius: BorderRadius.circular(11)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Second Terminal Examination $dropdownValue", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),),
                        //SizedBox(height: 11,),
                        Padding(
                          padding: topPadding,
                          child: Row(
                            children: [
                              Padding(
                                padding: rightPadding,
                                child: Icon(Icons.calendar_today, color: Colors.black,size: 17,),
                              ),
      
                              Text("$dropdownValue-6-16 - $dropdownValue-7-2", style: TextStyle(color:Colors.black, fontWeight: FontWeight.w400),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  //SizedBox(width: 22,),
                  Container(
                    height: 29,
                    width: 77,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: status == 'Pending'?Color.fromARGB(255, 255, 208, 0):Colors.green,
                      boxShadow: [
                        elevation()
                      ]
                    ),
                    child: Center(child: Text(status, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),)),
                  )
                ],
              ),
            ),
      ),
    ):SizedBox();
  }
}