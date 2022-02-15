import 'package:amss/view/kconstant.dart';
import 'package:flutter/material.dart';

class SingleChat extends StatefulWidget {
  const SingleChat({ Key? key }) : super(key: key);

  @override
  _SingleChatState createState() => _SingleChatState();
}

class _SingleChatState extends State<SingleChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
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
                  SenderMessage(message: "yatikai basira xu ",),
                    ReceiverMessage(message: "hyy",),
                  SenderMessage(message: "hyy",),
                  ReceiverMessage(message: "K gardai xau",),
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
                    image: DecorationImage(image: AssetImage("assets/icon/profile.png"))
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
      padding: const EdgeInsets.only(right:33.0,bottom: 22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5.0)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("$message",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17.0),),
                )),
              SizedBox(width: 11.0,),
              Container(
                height: 29,width: 29,
                decoration: BoxDecoration (
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage("assets/icon/profile.png"))
                ),
              ),
              
              
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right:98.0),
            child: Text("1 min ago",style: TextStyle(color: Colors.grey),),
          ) 
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
      padding: const EdgeInsets.only(left:33.0,bottom: 33.0),
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
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage("assets/icon/profile.png"))
                ),
              ),
              SizedBox(width: 11.0,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5.0)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("$message",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17.0)),
                )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left:98.0),
            child: Text("1 min ago",style: TextStyle(color: Colors.grey),),
          )
        ],
      ),
    )
;
  }
}