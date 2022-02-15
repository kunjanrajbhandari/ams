import 'package:amss/view/kconstant.dart';
import 'package:amss/view/main_page.dart';
import 'package:amss/view/widget/appbar/text_appbar.dart';
import 'package:amss/view/widget/divider_text.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Sign In"),backgroundColor: Colors.white,),
      body: Column(
        children: [
          SizedBox(height: 66,),
          //TextAppbar(title: "Sign In",),
          Image(image: AssetImage("assets/icon/gir_with_pen.png")),
         // SizedBox(height: 22,),
          SizedBox(
            width: MediaQuery.of(context).size.width-66,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: const EdgeInsets.only(bottom:8.0),
                    child: Text("Email/Phone Number", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius:
                                BorderRadius.circular(19),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius:
                                BorderRadius.circular(19),
                          ),
                          label: Text("Enter email or phone number")
                    ),
                  ),
                  SizedBox(height: 22,),
                  const Padding(
                    padding: const EdgeInsets.only(bottom:8.0),
                    child: Text("Password", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius:
                                BorderRadius.circular(19),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius:
                                BorderRadius.circular(19),
                          ),
                          label: Text("Enter password")
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/2,top: 8,bottom: 11),
                    child: Text("Forgot Password? ",style: TextStyle(color: primaryColor, fontWeight: FontWeight.w500, fontSize: 13),),
                  ),
                  Container(
                    height: 55.0,
                    width:  MediaQuery.of(context).size.width-55,
                    decoration: BoxDecoration(
                      color: Color(0xff51C2FF),
                      borderRadius: BorderRadius.circular(33.0)
                    ),
                    child: Center(child: Text("Sign In", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.white),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:21.0,bottom: 21),
                    child: DividerAndText(indent: 0,endIndent: 11,text: "OR",),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MainPage()));
                    },
                    child: Container(
                      height: 55.0,
                      width:  MediaQuery.of(context).size.width-55,
                      decoration: BoxDecoration(
                        border:Border.all(),
                        //color: Color(0xff51C2FF),
                        borderRadius: BorderRadius.circular(33.0)
                      ),
                      child: Center(child: Text("Sign In", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.black),)),
                    ),
                  ),
                  SizedBox(height: 22.0,),
                  Center(
                    child: RichText(
                      text:  TextSpan(
                          text: "Dont have account? ",
                          style:   TextStyle(color: Colors.black, fontSize: 16.0, fontWeight:  FontWeight.w400),
                          children:  [
                            TextSpan(text: 'Sign Up',
                                style: TextStyle(
                                    color: primaryColor, fontSize: 16),
                                
                            )
                          ]
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}