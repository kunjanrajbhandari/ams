import 'package:amss/view/kconstant.dart';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({ Key? key }) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Change Password"),),
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          SizedBox(height: 22,),
          Padding(
              padding: EdgeInsets.only(left:15.0,right: 15,top: 18.0),
              child: SizedBox(
                child: TextField(
                  style: const TextStyle(fontSize: 15,),
                  decoration: InputDecoration(                      
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(11), ),
                    hintText: 'Current Password',
                    hintStyle: const TextStyle(fontSize: 14, )
                    
                  ),
                ),
              ),
            ),


            Padding(
              padding: EdgeInsets.only(left:15.0,right: 15,top: 18.0),
              child: SizedBox(
                child: TextField(
                  style: const TextStyle(fontSize: 15,),
                  decoration: InputDecoration(                      
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(11), ),
                    hintText: 'New Password',
                    hintStyle: const TextStyle(fontSize: 14, )
                    
                  ),
                ),
              ),
            ),



            Padding(
              padding: EdgeInsets.only(left:15.0,right: 15,top: 18.0),
              child: SizedBox(
                child: TextField(
                  style: const TextStyle(fontSize: 15,),
                  decoration: InputDecoration(                      
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(11), ),
                    hintText: 'Confirm Password',
                    hintStyle: const TextStyle(fontSize: 14, )
                    
                  ),
                ),
              ),
            ),

            Padding(
              padding:  EdgeInsets.only(top:38.0, ),
              child: Container(
                height: 41,
                width: 88,
                decoration: BoxDecoration(
                  color: color,
                  boxShadow: [
                    elevation(
                      offsetX: 1.0, offsetY: 1.0, spreadRadius: 1
                    )
                  ]
                ),
                child: Center(child: Text("Submit",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize:15)),
              ),
            )
            )],
      ),
      
    );
  }
}