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
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                    colors: [
                      profileColor ,Color.fromARGB(255, 2, 182, 253)
                  ]),
              ),
              //color: color,
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
                      padding: const EdgeInsets.only(top:0.0),
                      child: Container(
                        height: 144.9,
                        width: 144.9,
                        decoration:  BoxDecoration(
                          
                          image: DecorationImage(image: NetworkImage("https://scontent.fbir5-1.fna.fbcdn.net/v/t1.6435-9/86937377_2630096997272845_4253014819956850688_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=5fcPYnxdJ10AX_Wy_nI&_nc_ht=scontent.fbir5-1.fna&oh=00_AT-V8Kc8FgSVR_KzflA9QLXXnBTHVv3SziQ7VW9rKlit9A&oe=6231C1DA"),fit: BoxFit.fill),
                          //borderRadius: BorderRadius.circular(55.0)
                          shape: BoxShape.circle
                        ),
                        //child: Image(image: NetworkImage(""),height:22.0,width:22.0),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: topPadding*2,
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