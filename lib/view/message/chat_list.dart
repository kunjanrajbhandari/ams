
import 'package:amss/view/kconstant.dart';
import 'package:amss/view/message/single_chat.dart';
import 'package:amss/view/widget/appbar/profile_appbar.dart';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:flutter/material.dart';


class ChatList extends StatefulWidget {
  const ChatList({ Key? key }) : super(key: key);

  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBarC(title: "Chat",),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            //SizedBox(height: 44.0,),
            
            SizedBox(height: 11.0,),
            SizedBox(
              width: MediaQuery.of(context).size.width-.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    labelText: "Search",
                  ),
                  
                  validator: (value) {
                  
                  },
                  onChanged: (value){
                    //deliveryPhone = value;
                  },
                ),
              ),
            ),
            //Padding(padding: EdgeInsets.all(44)),
           ListView.builder(
             
             padding: EdgeInsets.zero,
             physics: ScrollPhysics(),
             scrollDirection: Axis.vertical,
             shrinkWrap: true,
             itemCount: 6,
             itemBuilder: (context,index){
               return  GestureDetector(
                 onTap:(){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => SingleChat()));
                 },
                 child: Chat(image: "profile.png", message: "message", name: "name"));
             }
          )
          ],
        ),
      ),
      
    );
  }
}

class Chat extends StatelessWidget {
  String? image;
  String? name;
  String? message;
  Chat({ Key? key, required this.image, required this.message, required this.name }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        
        children: [
          

          const SizedBox(height: 11),
          SizedBox(
            width: MediaQuery.of(context).size.width-55,
            height: 77.9,  
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(

                  children: [
                    Container(
                      height: 55,width: 55,
                      decoration: BoxDecoration (
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage("assets/icon/$image"))
                      ),
                    ),
                    SizedBox(width: 11.0,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ram Bhandari", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17.0),),
                        Text("See you ", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16.0),),
                      ],
                    ),
                  ],
                ),
                Text("1 min", style:  TextStyle(color: Colors.grey),)
              ],
            ),    
          ),
          Divider(endIndent: 33, indent: 33,)
        ],
      ),
    );
  }
}