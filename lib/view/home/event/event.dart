import 'package:amss/view/home/event/calendar.dart';
import 'package:amss/view/home/event/calendarss.dart';
import 'package:amss/view/kconstant.dart';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({ Key? key }) : super(key: key);

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: ProfileAppBarC(),
      body: SingleChildScrollView(
        child: Column(
          children: [
          //ProfileAppBar(title: "event",backArrow: true,),
          Padding(
            padding:  EdgeInsets.only(top:38.0, right: mediaquery.orientation == Orientation.landscape?44:0),
            child: Container(
              height: 555,
              child: MyCallendar(),
            ),
          )
        ],),
      ),
    );
  }
}