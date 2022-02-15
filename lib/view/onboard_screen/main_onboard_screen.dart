import 'package:amss/view/kconstant.dart';
import 'package:amss/view/login/login.dart';
import 'package:amss/view/onboard_screen/onboard_screen1.dart';
import 'package:amss/view/onboard_screen/onboard_screen2.dart';
import 'package:flutter/material.dart';

class MainOnboardScreen extends StatefulWidget {
  const MainOnboardScreen({ Key? key }) : super(key: key);

  @override
  Main_OnboardScreenState createState() => Main_OnboardScreenState();
}

class Main_OnboardScreenState extends State<MainOnboardScreen> {
  List onboartScreenContainer = [const onboardScreen1(), const OnboardScreen2()];
  int tab =0;
  int currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:88.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.5,
              child: PageView.builder(
                onPageChanged: (int index){
                  currentIndex = index;
                  setState(() {
                    
                  });
                },
                itemCount: onboartScreenContainer.length,
                itemBuilder: (context, index){
                  return onboartScreenContainer[index];
                }
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              onboartScreenContainer.length, (index) => build_dots(index, context)
          )
            
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 58.0,top: 58),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Login()));
              },
              child: Container(
                  height: 55.0,
                  width:  MediaQuery.of(context).size.width-55,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    //Color(0xff51C2FF),
                    borderRadius: BorderRadius.circular(33.0)
                  ),
                  child: const Center(child: Text("Get Started", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white),)),
                ),
            ),
          )

        ],

        
      ),
      
    );
  }

  Container build_dots(int index, BuildContext context) {
    return Container(
        height: index==currentIndex?15:null, 
        width: index==currentIndex?20:null, 
        margin: const EdgeInsets.only(right:5.0,left: 5.0),
        decoration: BoxDecoration(
          //color: Color(0xff51C2FF),
          border: index==currentIndex?Border.all(width: 1.5,color: primaryColor):null,
          shape: BoxShape.circle
        ),
      child: Container(
        height: index==currentIndex?10:6, 
        width: index==currentIndex?10:6, 
        margin: const EdgeInsets.only(right:5.0,left: 5.0),
        decoration:  BoxDecoration(
          color:  primaryColor,
          //Color(0xff51C2FF),
          shape: BoxShape.circle
        ),
      ),
    );
  }
}