
import 'package:amss/view/home/attendance/event.dart';
import 'package:amss/view/kconstant.dart';
import 'package:amss/view/widget/appbar/profile_appbar.dart';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Attendance extends StatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  String? dropdownValue="Science";
  List<String> dayList = ['Science','Math','English','Computer','Social','Health',];
  //final aaf = Event(title:'afsfsd')
  //Map<DateTime, List<Event>>? selectedEvents;
  Map<DateTime, List<Event>>? selectedEvents ={
    DateTime(2020-12-05): [Event(title: "afsdfsd"),Event(title: "afsdfsd")]
  };
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  final _eventController = TextEditingController();

  @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }

  List<Event> _getEventsfromDay(DateTime date) {
    return selectedEvents![date] ?? [];
  }

  @override
  void dispose() {
    _eventController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      // appBar: AppBar(
      //   title: Text("Attendance"),
      //   centerTitle: true,
      // ),
      body: Column(
        children: [
          ProfileAppBar(title: "Attendance", backArrow: true,),
          SizedBox(height: 19,),
          Container(
              width: MediaQuery.of(context).size.width-19,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  elevation(
                offsetX: 5,
                offsetY: 4,
                blurRadius: 10,
                spreadRadius: 1,
                colors: Color.fromARGB(255, 83, 83, 83).withOpacity(.3)
              )
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Hi Kunjan,",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                    Container(
                      
                      decoration: BoxDecoration(
                        //color: Colors.red,
                        border: Border.all( color: Colors.white),
                        borderRadius: BorderRadius.circular(11)
                      ),
                      width: MediaQuery.of(context).size.width/2,
                      child: DropdownButton<String>(
                        // hint: Padding(
                        //   padding: leftPadding,
                        //   child: const Text("Select School/College"),
                        // ),
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_downward, color: Colors.white,),
                        elevation: 33,
                        isExpanded: true,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: dayList.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding: leftPadding,
                              child: Text(value,style: TextStyle(color: Colors.red),),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),




          SizedBox(height: 33,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Total Class: 106",style: TextStyle(fontWeight: FontWeight.bold),),
              Text("Present days: 106",style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),SizedBox(height: 33,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TableCalendar(
              focusedDay: selectedDay,
              firstDay: DateTime(1990),
              lastDay: DateTime(2050),
              calendarFormat: format,
              onFormatChanged: (CalendarFormat _format) {
                setState(() {
                  format = _format;
                });
              },
              startingDayOfWeek: StartingDayOfWeek.sunday,
              weekendDays: [6],
              daysOfWeekVisible: true,

              //Day Changed
              onDaySelected: (DateTime selectDay, DateTime focusDay) {
                setState(() {
                  selectedDay = selectDay;
                  focusedDay = focusDay;
                });
                print(focusedDay);
              },
              selectedDayPredicate: (DateTime date) {
                return isSameDay(selectedDay, date);
              },

              eventLoader: _getEventsfromDay,

              //To style the Calendar
              calendarStyle: CalendarStyle(
                canMarkersOverflow : false,
                markerSize: 22,
                selectedDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                selectedTextStyle: TextStyle(color: Colors.white),

                
              markerDecoration: BoxDecoration(shape: BoxShape.rectangle,color: Colors.blue,),
                todayDecoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5.0),
                ),

                defaultDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                 // color: Colors.green,
                  borderRadius: BorderRadius.circular(5.0),
                ),

                weekendDecoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5.0),
                ),weekendTextStyle: TextStyle(color: Colors.white),
              ),

              headerStyle: HeaderStyle(
                formatButtonVisible: true,
                titleCentered: true,
                //decoration: BoxDecoration(color: Colors.yellow,),
                formatButtonShowsNext: false,
                formatButtonDecoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(9.0),
                ),
                formatButtonTextStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ..._getEventsfromDay(selectedDay).map(
            (Event event) => ListTile(
              title: Text(
                event.title,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Add Event"),
            content: TextFormField(
              controller: _eventController,
            ),
            actions: [
              TextButton(
                child: Text("Cancel"),
                onPressed: () => Navigator.pop(context),
              ),
              TextButton(
                child: Text("Ok"),
                onPressed: () {
                  if (_eventController.text.isEmpty) {

                  } 
                  else {
                    if (selectedEvents![selectedDay] != null) {
                      selectedEvents![selectedDay]!.add(
                        
                        Event(title: _eventController.text)
                        
                      );

                      print(selectedEvents!)
;                    } else {
                      selectedEvents![selectedDay] = [
                        Event(title: _eventController.text)
                      ];
                    }

                  }
                  Navigator.pop(context);
                  _eventController.clear();
                  setState((){});
                  return;
                },
              ),
            ],
          ),
        ),
        label: Text("Add Event"),
        icon: Icon(Icons.add),
      ),
    );
  }
}