import 'package:flutter/material.dart';

class UpDownArrow extends StatefulWidget {
  bool boolValue;
  double? iconHeight;
   UpDownArrow({ Key? key, required this.boolValue, this.iconHeight, }) : super(key: key);

  @override
  State<UpDownArrow> createState() => _UpDownArrowState();
}

class _UpDownArrowState extends State<UpDownArrow> {
  @override
  Widget build(BuildContext context) {
    return widget.boolValue == false? Padding(
      padding: const EdgeInsets.only(top:9.0,left: 1.0),
      child: GestureDetector(
        onTap: (){
          widget.boolValue =true;
          setState(() {});
        },
        child: SizedBox(
          height: widget.iconHeight??15,
          child: Image(image: AssetImage('assets/icon/uparrow.png')),
        ),
      ),
    ):Padding(
      padding: const EdgeInsets.only(top:9.0),
      child: GestureDetector(
          onTap: (){
          widget.boolValue =false;
          setState(() {});
        },
        child: SizedBox(
          height: widget.iconHeight??15,
          child: Image(image: AssetImage('assets/icon/downarrow.png')),
        ),
      ),
    );
  }
}