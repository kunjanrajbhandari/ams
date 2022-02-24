
import 'package:amss/view/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarSF extends StatefulWidget {
  const CalendarSF({ Key? key }) : super(key: key);

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<CalendarSF> {

  final _eventController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      cellBorderColor: color,
      // initialDisplayDate: DateTime(2022,01, 03,04,3),
      // initialSelectedDate: DateTime.now(),
      //backgroundColor: Colors.green,
     //  allowDragAndDrop: true,
     timeSlotViewSettings: TimeSlotViewSettings(),
     //resourceViewSettings: ResourceViewSettings(),
      selectionDecoration: BoxDecoration(
        shape: BoxShape.rectangle
      ),
      view: CalendarView.week,
      dataSource: MeetingData(getappointment()),
    );
  }
}


List<Appointment> getappointment(){
  List<Appointment>  meetings = <Appointment> [];
  final DateTime today = DateTime.now();
  final DateTime startTime = DateTime(today.year, today.month, today.day, 9,0);
  final DateTime endTime = startTime.add(Duration(hours: 2));
  //meetings.add(Appointment(startTime: startTime, endTime: endTime, subject: "Conference", color: color, recurrenceRule: 'FREQ=DAILY;COUNT=10', isAllDay: false));
  meetings.add(Appointment(startTime: DateTime(2022,02,14, 10,0), endTime: DateTime(2022,02,14, 12), subject: "p", notes: "a", color: Colors.green, isAllDay: false,recurrenceRule: 'FREQ=DAILY;COUNT=10',));
  return meetings;
}

class MeetingData extends CalendarDataSource{
  MeetingData(List<Appointment> source){
    appointments = source;

  }
}