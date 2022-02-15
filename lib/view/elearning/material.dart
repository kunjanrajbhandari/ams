import 'package:amss/model/material.dart';
import 'package:amss/view/kconstant.dart';
import 'package:amss/view/widget/appbar/profile_appbar.dart';
import 'package:flutter/material.dart';

class Materials extends StatefulWidget {
  const Materials({ Key? key }) : super(key: key);

  @override
  _MaterialsState createState() => _MaterialsState();
}

class _MaterialsState extends State<Materials> {
  final elibraryList = [
    
    MaterialModel(
      title: "Fractional and Decimal", 
      materialType: 'Tom Maloney',
      colors: const   Color(0xffDDB15E),
    ),
     MaterialModel(
      title: "Fractional and Decimal", 
      materialType: 'Notes',
      colors: const Color(0xff336699)
    ),
    MaterialModel(
      title: "Sentences", 
       
      materialType: 'Defination, Rule, Kinds',
      colors: Color.fromARGB(255, 106, 110, 104)
    ),
    MaterialModel(
      title: "Fractional and Decimal", 
      materialType: 'Tom Maloney',
      colors: Color(0xffCC99CC)
    ),
    MaterialModel(
      title: "Sentences", 
       
      materialType: 'Defination, Rule, Kinds',
      colors: color
    ),
    // MaterialModel(
    //   title: "Sentences", 
       
    //   materialType: 'Defination, Rule, Kinds',
    //   colors: const    Color(0xff3399CB)
    // ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileAppBar(title: "Materials",backArrow: true,),
            ListView.builder(
                padding: const EdgeInsets.only(left: 8,right:  8),
                itemCount: elibraryList.length,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: materialList(context,title: elibraryList[index].title,  materialType: elibraryList[index].materialType!, colors: elibraryList[index].colors!),
                  );
                },
              )
      
          ],
        ),
      ),
      
    );
  }
}


Container materialList(BuildContext context,{ required String? title, required String materialType,required Color colors}) {
    return Container(
          height:111.0, 
          //width: 111,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: colors,
            boxShadow: [
              elevation(offsetX: 2,colors: primaryColor.withOpacity(0.5))
            ]
          ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Container(
               padding: EdgeInsets.only(left:33,top: 8),
               width: MediaQuery.of(context).size.width,
               child: Text("$title",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white),)),
             Container(
               padding: EdgeInsets.only(left:33,top: 8),
               width: MediaQuery.of(context).size.width,
               child: Text(materialType ,style: TextStyle(fontSize: 13,fontWeight: FontWeight.normal,color: Colors.white),)),
             
             // Container(
               //padding: EdgeInsets.only(left:33),
             //   width: MediaQuery.of(context).size.width/1.9,
             //   child: Text("$subtitle",style: TextStyle(fontSize: 13,fontWeight: FontWeight.normal,color: Colors.white),)),
               Container(//color: primaryColor,
                 //padding: EdgeInsets.only(left:33),
                 //width: MediaQuery.of(context).size.width/2,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                     IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye),color: Colors.white,),
                     IconButton(onPressed: (){}, icon: Icon(Icons.download),color: Colors.white,),
                   ],
                 ),
               )

           ],
         ),
        );
  
}