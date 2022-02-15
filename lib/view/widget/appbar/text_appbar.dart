import 'package:amss/view/kconstant.dart';
import 'package:flutter/material.dart';

class TextAppbar extends StatelessWidget {
  Color? textColor;
  String? title;
  Color? textColors;
  Color? opacity;
   TextAppbar({ Key? key ,  this.title, this.textColors, this.opacity, this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88.0,
      color: opacity?? Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(width: 8.0,),
          IconButton(onPressed: (){
            Navigator.of(context,rootNavigator: true).pop();
          }, icon: const Icon(Icons.arrow_back),color: textColors ?? Colors.white,),
          title!=''?Padding(
            padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width/3.5),
            child: Text("$title",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: textColors??Colors.black),),
          ):SizedBox(),
          Padding(
            padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width-111),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.download),color:textColors?? Colors.white,),
          )
        ],
      ),
    );
  }
}