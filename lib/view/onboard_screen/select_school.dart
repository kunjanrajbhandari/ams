import 'package:amss/view/kconstant.dart';
import 'package:amss/view/onboard_screen/main_onboard_screen.dart';
import 'package:flutter/material.dart';

class SchoolSelect extends StatefulWidget {
  const SchoolSelect({ Key? key }) : super(key: key);

  @override
  _SchoolSelectState createState() => _SchoolSelectState();
}

class _SchoolSelectState extends State<SchoolSelect> {
  List<String> schoolName = ['School1','School2','School3','School4','School5','School5'];
  String? dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:133.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image(image: AssetImage("assets/icon/find_school.png"))),
          ),
          const SizedBox(height: 33.0,),
          const Text("Find Your School/College",style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),),
          const SizedBox(height: 33.0,),
          SizedBox(
            width: MediaQuery.of(context).size.width-55,
            child: Center(child: Text("Anyone Can join the millions of members in our community to learn cutting edge skills.",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.grey),))),
          
          
          SizedBox(height: 55.0,),
          
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(11)
            ),
            width: MediaQuery.of(context).size.width-55,
            child: Center(
              child: DropdownButton<String>(
                
                hint: Padding(
                  padding: leftPadding,
                  child: const Text("Select School/College"),
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
                    child: Padding(
                      padding: leftPadding,
                      child: Text(value),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 58.0,top: 88),
            child: GestureDetector(
              onTap: (){
               
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MainOnboardScreen()));
                
                
              },
              child: Container(
                  height: 55.0,
                  width:  MediaQuery.of(context).size.width-55,
                  decoration: BoxDecoration(
                    color: const Color(0xff000080),
                    //Color(0xff000080),
                    borderRadius: BorderRadius.circular(33.0)
                  ),
                  child: Center(child: Text("Get Started", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white),)),
                ),
            ),
          )

        ],
      ),
      
    );
  }
}