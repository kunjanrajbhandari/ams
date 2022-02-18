import 'package:amss/view/kconstant.dart';
import 'package:flutter/material.dart';

import '../kconstant.dart';

class SingleChat extends StatefulWidget {
  const SingleChat({ Key? key }) : super(key: key);

  @override
  _SingleChatState createState() => _SingleChatState();
}

class _SingleChatState extends State<SingleChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEAF5FD),

    body: Column(
        children: [
          ChatAppBar(),
          SizedBox(
            width: MediaQuery.of(context).size.height-111,
            height: MediaQuery.of(context).size.height-211,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top:8.0,bottom: 28.0),
                    child: Container(
                      height:33.0,width: 111.0,
                      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4), borderRadius: BorderRadius.circular(22.0)),
                      child: Center(child: Text("05 July 2021",style: TextStyle(color: Colors.black.withOpacity(0.6)),)),
                    ),

                  ),
                  ReceiverMessage(message: "hyy",),
                  SenderMessage(message: "hyy",),
                  ReceiverMessage(message: "K gardai xau",),
                  SenderMessage(message: "Lorem Ipsum is simply dummy text\nof the prinem Ipsum has been",),
                    ReceiverMessage(message: "Lorem Ipsum is simply dummy text \nof the prinem Ipsum has been ",),
                  SenderMessage(message: "Lorem Ipsum is simply dummy text\nof the prinem Ipsum has been",),
                  ReceiverMessage(message: "Lorem Ipsum is simply dummy text \nof the prinem Ipsum has been ",),
                  SenderMessage(message: "yatikai basira xu ",)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(    
              decoration:  InputDecoration(
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.send)),
                focusedBorder: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(33.0),
                borderSide: BorderSide(
                  color: Colors.grey,
                  
                ),
              ),
              enabledBorder: OutlineInputBorder(
                
                borderRadius:BorderRadius.circular(33.0),
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              hintText: "Type message..."
              ),
              
              validator: (value) {
                
              },
              onChanged: (value){
                //deliveryFull Name = value;
              },
            ),
          ),
        ],
      ),

      
    );
  }
}
class ChatAppBar extends StatelessWidget {
 
   ChatAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 111.0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(bottom:8.0),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back),color: Colors.black,),
             Padding(
               padding: const EdgeInsets.only(left:18.0),
               child: Container(
                  height: 44,width: 44,
                  decoration: BoxDecoration (
                    shape: BoxShape.circle,
                    border: Border.all(color: color),
                    image: DecorationImage(image: NetworkImage("https://scontent.fbir5-1.fna.fbcdn.net/v/t1.6435-9/86937377_2630096997272845_4253014819956850688_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=5fcPYnxdJ10AX_Wy_nI&_nc_ht=scontent.fbir5-1.fna&oh=00_AT-V8Kc8FgSVR_KzflA9QLXXnBTHVv3SziQ7VW9rKlit9A&oe=6231C1DA"))
                  ),
                ),
             ),
              Padding(
                padding: const EdgeInsets.only(left:29.0,bottom: 11),
                child: Text("Kunjan Rajbhandari",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18,color: Colors.black),),
              )

          ],
        ),
      ),
      
    );
  }
}



class SenderMessage extends StatelessWidget {
  String? message;
   SenderMessage({ Key? key ,required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:8.0,bottom: 22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 126, 209, 253),Color.fromARGB(255, 69, 190, 255), 
                  ]),
                 // color: Color.fromARGB(255, 126, 209, 253),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft:  Radius.circular(15),
                    bottomRight:  Radius.circular(15)
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("$message",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17.0),),
                )),
              SizedBox(width: 11.0,),
              // Container(
              //   height: 29,width: 29,
              //   decoration: BoxDecoration (
              //     border: Border.all(color: color),
              //     shape: BoxShape.circle,
              //     image: DecorationImage(image: NetworkImage("https://scontent.fbir5-1.fna.fbcdn.net/v/t1.6435-9/86937377_2630096997272845_4253014819956850688_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=5fcPYnxdJ10AX_Wy_nI&_nc_ht=scontent.fbir5-1.fna&oh=00_AT-V8Kc8FgSVR_KzflA9QLXXnBTHVv3SziQ7VW9rKlit9A&oe=6231C1DA"))
              //   ),
              // ),
              
              
            ],
          ),
          Center(child: Text("1 min ago",style: TextStyle(color: Colors.grey),)) 
        ],
      ),
    );
  }
}



class ReceiverMessage extends StatelessWidget {
  String? message;
   ReceiverMessage({ Key? key ,required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:11.0,bottom: 33.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 29,width: 29,
                decoration: BoxDecoration (
                  //border: Border.all(color: color),
                  shape: BoxShape.circle,
                  image: DecorationImage(image: NetworkImage("https://scontent.fbir5-1.fna.fbcdn.net/v/t1.6435-9/86937377_2630096997272845_4253014819956850688_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=5fcPYnxdJ10AX_Wy_nI&_nc_ht=scontent.fbir5-1.fna&oh=00_AT-V8Kc8FgSVR_KzflA9QLXXnBTHVv3SziQ7VW9rKlit9A&oe=6231C1DA"))
                ),
              ),
              SizedBox(width: 11.0,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.9),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomLeft:  Radius.circular(15),
                    bottomRight:  Radius.circular(15)
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("$message",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17.0, )),
                )),
            ],
          ),
          Center(child: Text("1 min ago",style: TextStyle(color: Colors.grey),))
        ],
      ),
    )
;
  }
}