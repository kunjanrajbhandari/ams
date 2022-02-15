import 'package:amss/view/kconstant.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: primaryColor,
              height: 299.0,
              width: MediaQuery.of(context).size.width,
      
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  
                 Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     IconButton(onPressed: (){
                       //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => UserProfile()));
                       Navigator.of(context).pop();
                     }, icon: Icon(Icons.arrow_back),color: Colors.white,),
                     Padding(
                       padding: const EdgeInsets.only(left:111.0),
                       child: Text("Profile",style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold,fontSize: 22.0),),
                     ),
                    //  IconButton(onPressed: (){
                    //    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyHomePage()));
                    //  }, icon: Icon(Icons.logout),color: Colors.white,),
                   ],
                 ),
                  Center( 
                    child: Padding(
                      padding: const EdgeInsets.only(top:18.0),
                      child: Container(
                        height: 70.9,
                        width: 70.9,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/icon/profile.png"),fit: BoxFit.fill),
                          //borderRadius: BorderRadius.circular(55.0)
                          shape: BoxShape.circle
                        ),
                        //child: Image(image: NetworkImage(""),height:22.0,width:22.0),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: topPadding*4,
                      child: Text("Kunjan Rajbhandari", style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold),),
                    ),
                  )
                ],
              ),
            ),
            Padding(padding: topPadding*4),
            Padding(
              padding: EdgeInsets.only(left: 12/0.5, bottom: 11.0),
              child: Text("Email",style: TextStyle(color: Colors.grey,fontSize: 15.0,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: leftPadding*3,
              child: Text("Kunjanraj@gmail.com",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
            ),
      
            Divider(),
      
             Padding(
              padding: EdgeInsets.only(left: 12/0.5, bottom: 11.0,top:19.0),
              child: Text("Phone",style: TextStyle(color: Colors.grey,fontSize: 15.0,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: leftPadding*3,
              child: Text("981234566",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
            ),
            Divider(),
      
             Padding(
              padding: EdgeInsets.only(left: 12/0.5, bottom: 11.0,top:19.0),
              child: Text("Address",style: TextStyle(color: Colors.grey,fontSize: 15.0,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: leftPadding*3,
              child: Text("Kathmandu",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}