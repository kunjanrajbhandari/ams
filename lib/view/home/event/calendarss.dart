import 'dart:math';
import 'package:amss/view/widget/appbar/profile_appbarC.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class MyCallendar extends StatefulWidget {
  MyCallendar({
    Key? key,
  }) : super(key: key);

  //final String title;

  @override
  _MyCallendarState createState() => _MyCallendarState();
}

class _MyCallendarState extends State<MyCallendar> {
  late MeetingDataSource _events;
  late List<Appointment> _shiftCollection;

  late List<CalendarResource> _employeeCalendarResource;
  late List<TimeRegion> _specialTimeRegions;

  @override
  void initState() {
    addResourceDetails();
    addAppointments();
    addSpecialRegions();
    _events = MeetingDataSource(_shiftCollection, _employeeCalendarResource);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SfCalendar(
                view: CalendarView.timelineMonth,
                firstDayOfWeek: 1,
                timeSlotViewSettings:
                    TimeSlotViewSettings(startHour: 9, endHour: 17),
                dataSource: _events,
                specialRegions: _specialTimeRegions)));
  }

  void addAppointments() {
    var startTime = [9, 10, 11, 12, 1, 2, 3, 4];
    var subjectCollection = [
      'Present', 'Absent'
      // 'General Meeting',
      // 'Plan Execution',
      // 'Project Plan',
      // 'Consulting',
      // 'Support',
      // 'Development Meeting',
      // 'Scrum',
      // 'Project Completion',
      // 'Release updates',
      // 'Performance Check'
    ];

    var colorCollection = [
      const Color(0xFF0F8644),
      const Color(0xFFD20100),
    ];

    _shiftCollection = <Appointment>[];
    for (var calendarResource in _employeeCalendarResource) {
      print("$calendarResource");
      var employeeIds = [calendarResource.id];

      for (int j = 0; j < 36; j++) {
        final DateTime date = DateTime.now().add(Duration(days: j));
        int startHour = startTime[Random().nextInt(8)];
        // startHour =
        //     startHour >= 13 && startHour <= 14 ? startHour + 1 : startHour;
        final DateTime _shiftStartTime =
            DateTime(date.year, date.month, date.day, startHour, 0, 0);
        _shiftCollection.add(Appointment(
            startTime: _shiftStartTime,
            endTime: _shiftStartTime.add(Duration(hours: 1)),
            subject: subjectCollection[Random().nextInt(2)],
            color: colorCollection[Random().nextInt(2)],
            startTimeZone: '',
            endTimeZone: '',
            resourceIds: employeeIds));
      }
    }
  }

  void addResourceDetails() {
    var nameCollection = [
      'Math',
      'Science',
      'Health',
      'English',
      'Social',
      'Computer',
      'Nepali',
      'Math 2',
    ];

    // var userImages = [
    //   'https://scontent.fbir5-1.fna.fbcdn.net/v/t1.6435-9/86937377_2630096997272845_4253014819956850688_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=5fcPYnxdJ10AX_Wy_nI&_nc_ht=scontent.fbir5-1.fna&oh=00_AT-V8Kc8FgSVR_KzflA9QLXXnBTHVv3SziQ7VW9rKlit9A&oe=6231C1DA',
    //   'https://scontent.fbir5-1.fna.fbcdn.net/v/t1.6435-9/86937377_2630096997272845_4253014819956850688_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=5fcPYnxdJ10AX_Wy_nI&_nc_ht=scontent.fbir5-1.fna&oh=00_AT-V8Kc8FgSVR_KzflA9QLXXnBTHVv3SziQ7VW9rKlit9A&oe=6231C1DA',
    //   'https://scontent.fbir5-1.fna.fbcdn.net/v/t1.6435-9/86937377_2630096997272845_4253014819956850688_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=5fcPYnxdJ10AX_Wy_nI&_nc_ht=scontent.fbir5-1.fna&oh=00_AT-V8Kc8FgSVR_KzflA9QLXXnBTHVv3SziQ7VW9rKlit9A&oe=6231C1DA',
    //   'https://scontent.fbir5-1.fna.fbcdn.net/v/t1.6435-9/86937377_2630096997272845_4253014819956850688_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=5fcPYnxdJ10AX_Wy_nI&_nc_ht=scontent.fbir5-1.fna&oh=00_AT-V8Kc8FgSVR_KzflA9QLXXnBTHVv3SziQ7VW9rKlit9A&oe=6231C1DA',
    //   'https://scontent.fbir5-1.fna.fbcdn.net/v/t1.6435-9/86937377_2630096997272845_4253014819956850688_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=5fcPYnxdJ10AX_Wy_nI&_nc_ht=scontent.fbir5-1.fna&oh=00_AT-V8Kc8FgSVR_KzflA9QLXXnBTHVv3SziQ7VW9rKlit9A&oe=6231C1DA',
    //   'https://scontent.fbir5-1.fna.fbcdn.net/v/t1.6435-9/86937377_2630096997272845_4253014819956850688_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=5fcPYnxdJ10AX_Wy_nI&_nc_ht=scontent.fbir5-1.fna&oh=00_AT-V8Kc8FgSVR_KzflA9QLXXnBTHVv3SziQ7VW9rKlit9A&oe=6231C1DA',
    //   'https://scontent.fbir5-1.fna.fbcdn.net/v/t1.6435-9/86937377_2630096997272845_4253014819956850688_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=5fcPYnxdJ10AX_Wy_nI&_nc_ht=scontent.fbir5-1.fna&oh=00_AT-V8Kc8FgSVR_KzflA9QLXXnBTHVv3SziQ7VW9rKlit9A&oe=6231C1DA',
    //   'https://scontent.fbir5-1.fna.fbcdn.net/v/t1.6435-9/86937377_2630096997272845_4253014819956850688_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=5fcPYnxdJ10AX_Wy_nI&_nc_ht=scontent.fbir5-1.fna&oh=00_AT-V8Kc8FgSVR_KzflA9QLXXnBTHVv3SziQ7VW9rKlit9A&oe=6231C1DA',

    // ];

    _employeeCalendarResource = <CalendarResource>[];
    for (var i = 0; i < nameCollection.length; i++) {
      _employeeCalendarResource.add(CalendarResource(
        id: '000' + i.toString(),
        displayName: nameCollection[i],
        color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
            Random().nextInt(255), 1),
        // image: i < userImages.length
        //     ? NetworkImage(userImages[i], scale: 11)
        //     : null
      ));
    }
  }

  void addSpecialRegions() {
    final DateTime date = DateTime.now();
    _specialTimeRegions = [
      TimeRegion(
          startTime: DateTime(date.year, date.month, date.day, 13, 0, 0),
          endTime: DateTime(date.year, date.month, date.day, 14, 0, 0),
          text: 'Lunch',
          resourceIds: _employeeCalendarResource.map((e) => e.id).toList(),
          recurrenceRule: 'FREQ=DAILY;INTERVAL=1',
          enablePointerInteraction: false)
    ];
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> shiftCollection,
      List<CalendarResource> employeeCalendarResource) {
    appointments = shiftCollection;
    resources = employeeCalendarResource;
  }
}
