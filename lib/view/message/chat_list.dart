
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
      appBar: ProfileAppBarC(title: "Message",),
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
            width: MediaQuery.of(context).size.width,
            height: 77.9,  
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  
                  child: Row(

                    children: [
                      SizedBox(width: 11,),
                      Container(
                        height: 47,width: 47,
                        decoration: BoxDecoration (
                          border: Border.all(color: color),
                          shape: BoxShape.circle,
                          image: DecorationImage(image: NetworkImage("https://scontent.fbir5-1.fna.fbcdn.net/v/t1.6435-9/86937377_2630096997272845_4253014819956850688_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=5fcPYnxdJ10AX_Wy_nI&_nc_ht=scontent.fbir5-1.fna&oh=00_AT-V8Kc8FgSVR_KzflA9QLXXnBTHVv3SziQ7VW9rKlit9A&oe=6231C1DA"))
                        ),
                      ),
                      SizedBox(width: 19.0,),
                      Container(
                         width: MediaQuery.of(context).size.width/1.39,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22)
                      ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Ram Bhandari", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17.0),),
                                  Text("See you ramu kaka", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16.0),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:8.0),
                              child: Container(
                                
                        height:22,width: 22,decoration: BoxDecoration(shape: BoxShape.circle, color: Color.fromARGB(255, 231, 101, 91)),
                        child: Center(child: Text("1", style:  TextStyle(color: Colors.white, fontSize: 11),))),
                            ),

                        //SizedBox(width: .0,)
                    
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),
               
              ],
            ),    
          ),
          Divider(endIndent: 33, indent: 33,)
        ],
      ),
    );
  }
}