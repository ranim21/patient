
import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';

class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {

  DateTime selectedDay;
  List selectedEvent;

  final Map<DateTime, List<dynamic>> events = {
    DateTime(2020,12,12): [
      {'Name': 'Your event Name', 'isDone' : true},
      {'Name': 'Your event Name 2', 'isDone' : true},
      {'Name': 'Your event Name 3', 'isDone' : false},
    ],
    DateTime(2020,12,2): [
      {'Name': 'Your event Name', 'isDone' : false},
      {'Name': 'Your event Name 2', 'isDone' : true},
      {'Name': 'Your event Name 3', 'isDone' : false},
    ]
  };

  void _handleData(date){
    setState(() {
      selectedDay = date;
      selectedEvent = events[selectedDay] ?? [];
    });
    print(selectedDay);
  }

  @override
  void initState() {
    // TODO: implement initState
    selectedEvent = events[selectedDay] ?? [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calender'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Container(
            child: Calendar(
              startOnMonday: true,
              selectedColor: Colors.blue,
              todayColor: Colors.red,
              eventColor: Colors.green,
              eventDoneColor: Colors.amber,
              bottomBarColor: Colors.deepOrange,
              onRangeSelected: (range){
                print('Selected Day ${range.from}, ${range.to}');
              },
              onDateSelected: (date){
                return _handleData(date);
              },
              events: events,
              isExpanded: true,
              dayOfWeekStyle: TextStyle(
                fontSize: 13,
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
              bottomBarTextStyle: TextStyle(
                color: Colors.white,
              ),
              hideBottomBar: false,
              isExpandable: true,
              hideArrows: false,
              weekDays: ['Mon','Tue','Wed','Thu','Fri','Sat','Sun'],
            ),
          ),
      ),
    );
  }
}
