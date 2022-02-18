import 'package:amss/view/kconstant.dart';
import 'package:amss/view/more/settings/change_password/change_password.dart';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: ProfileAppBarC(title: "Setting", backArrow: true,),
      body: Column(
        children: [
          SizedBox(height: 44,),
          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  const ChangePassword()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width-88,
                height: 44,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(11),
                  boxShadow: [
                    elevation(
                      //spreadRadius: 2,
                      offsetX: -5,offsetY: -5,
                      colors: Colors.white),
                    elevation()
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top:2.0, left: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Change Password",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                      Padding(
                        padding: const EdgeInsets.only(right:8.0),
                        child: Icon(Icons.arrow_forward),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}