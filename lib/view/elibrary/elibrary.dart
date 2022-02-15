import 'package:amss/model/elibrary.dart';
import 'package:amss/model/model.dart';
import 'package:amss/view/widget/appbar/profile_appbar.dart';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:flutter/material.dart';

import '../kconstant.dart';

class Elibrary extends StatefulWidget {
  const Elibrary({ Key? key }) : super(key: key);

  @override
  _ElibraryState createState() => _ElibraryState();
}

class _ElibraryState extends State<Elibrary> {
  final myList = ["Record", "My Books", "Pustakalaya"];
  final elibraryList = [
    
    ElibraryModel(
      title: "Atomic Habits", 
      imageName: "bookimg7.jpeg", 
      author: 'Tom Maloney',
      colors: const Color(0xffDDB15E),
    ),
     ElibraryModel(
      title: "Atomic Habits", 
      imageName: "bookimg5.jpeg", 
      author: 'Tom Maloney',
      colors: const Color(0xff6D7FB8)
    ),
    ElibraryModel(
      title: "Atomic Habits", 
      imageName: "bookimg3.jpeg", 
      author: 'Tom Maloney',
      colors: Color.fromARGB(255, 106, 110, 104)
    ),
    ElibraryModel(
      title: "Atomic Habits", 
      imageName: "bookimg5.jpeg", 
      author: 'Tom Maloney',
      colors: color
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBarC(
              title: "E-Library",
            ),
      backgroundColor: backgroundColor,
      body:SingleChildScrollView(
       child: Column(
          children: [
            
            SizedBox(
              height: 49,width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: myList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container( 
                      decoration: BoxDecoration(
                        color: const Color(0xff6D7FB8),
                        borderRadius: BorderRadius.circular(33)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:11.0,right:11,top:5.0, bottom: 5.0),
                        child: Center(child: Text(myList[index],style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w400),)),
                      )
                    ),
                  );
                }
              ),
            ),
         // Image(image: AssetImage('assets/image/image1.png'))
             Padding(
              padding: EdgeInsets.only(left:28.0,right: 28,top: 11.0),
              child: TextField(
              
              decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: rightPadding,
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(33)),
                hintText: 'Enter a search term',
              ),
          ),
            ),
            ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: elibraryList.length,
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: elearning_list(context,title: elibraryList[index].title, imageName: elibraryList[index].imageName!, author: elibraryList[index].author!, colors: elibraryList[index].colors),
                  ),
                );
              },
            )
            
          ],
        ),
      )
    );
  }

  Container elearning_list(BuildContext context,{required String imageName, required String? title, required String author,required Color colors}) {
    return Container(
          height:122.0, width: MediaQuery.of(context).size.width-33,
          decoration: BoxDecoration(
            boxShadow: [
              elevation(colors: Colors.grey)
            ],
            borderRadius: BorderRadius.circular(24),
            color: colors
          ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children:[
             //Padding(padding: EdgeInsets.all(9)),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(color: colors,
                 width: 69,
                 height: 99,
                 child: Image(image: AssetImage('assets/book_image/$imageName'),fit: BoxFit.fill,)),
             ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width/1.9,
                      child: Text("$title",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white),)),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/1.9,
                      child: Text("A book by $author  ",style: TextStyle(fontSize: 13,fontWeight: FontWeight.normal,color: Colors.white),)),
                    
                    // SizedBox(
                    //   width: MediaQuery.of(context).size.width/1.9,
                    //   child: Text("$subtitle",style: TextStyle(fontSize: 13,fontWeight: FontWeight.normal,color: Colors.white),)),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/1.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye),color: Colors.white,),
                            IconButton(onPressed: (){}, icon: Icon(Icons.download),color: Colors.white,),
                          ],
                        ),
                      )

                  ],
                )
           ]
         ),
        );
  }
}