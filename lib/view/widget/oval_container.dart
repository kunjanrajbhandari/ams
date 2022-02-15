
import 'package:flutter/material.dart';

class Oval extends StatelessWidget {
  double? height;
  double? width;
  Oval({ Key? key , this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        height: height??50,
        width: width??100,
        margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
        decoration:  BoxDecoration(
          color: Color.fromARGB(255, 231, 101, 92),
          //border: Border.all(color: Colors.black, width: 0.0),
          borderRadius: new BorderRadius.all(Radius.elliptical(100, 50)),
        ),
        //child: Text('     '),
      ),
    );
  }
}