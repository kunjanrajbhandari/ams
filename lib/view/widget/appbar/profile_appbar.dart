import 'package:amss/view/kconstant.dart';
import 'package:flutter/material.dart';

class ProfileAppBar extends StatefulWidget {
  String? title = '';
  Orientation? orient;
  bool? backArrow;
   ProfileAppBar({ Key? key, this.title ,this.orient, this.backArrow=false}) : super(key: key);

  @override
  State<ProfileAppBar> createState() => _ProfileAppBarState();
}

class _ProfileAppBarState extends State<ProfileAppBar> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery =MediaQuery.of(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: widget.title == null&& mediaQuery.orientation ==Orientation.portrait ?141.0:widget.title == null||mediaQuery.orientation ==Orientation.landscape ?99:111,
      color: Colors.white,
      child: Padding(
        padding: bottomPadding*2,
        child:  Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
                
            widget.title == null ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: mediaQuery.orientation ==Orientation.portrait?leftPadding*2:leftPadding*11,
                  child: Text("Hello,",style:   TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 19.0, fontWeight:  FontWeight.w400),),
                ),
                Padding(
                  padding: mediaQuery.orientation ==Orientation.portrait?leftPadding*2:leftPadding*11,
                  child: Row(
                    children: [
                      Text("Kunjan ",style:   TextStyle( color: Colors.black, fontSize: 28,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: SizedBox(
                          height: 37,
                          child: Image(image: AssetImage('assets/image/wave.png'))),
                      )
                    ],
                  ),
                ),
              ],
            ):Row(
              mainAxisAlignment: widget.backArrow ==false? MainAxisAlignment.spaceBetween:MainAxisAlignment.spaceEvenly,
              children: [
                widget.backArrow ==true ? IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back)):SizedBox(),
                Padding(
                  padding:  EdgeInsets.only(bottom:8,left:widget.backArrow==false? MediaQuery.of(context).size.width/2.8:MediaQuery.of(context).size.width/4),
                  child: Text('${widget.title}',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
                ),
              ],
            ),
             Padding(
              padding: EdgeInsets.only(right:mediaQuery.orientation ==Orientation.portrait?22:99),
              child: Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle
                ),
                child: Image(image: AssetImage("assets/icon/man.png"))),
            )
          ],
        ),
      ),
    );
  }
}