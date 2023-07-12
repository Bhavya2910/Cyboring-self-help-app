import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


class Planning extends StatefulWidget {
  const Planning({Key? key}) : super(key: key);

  @override
  State<Planning> createState() => _PlanningState();
}

class _PlanningState extends State<Planning> {
  @override
  int seclectedindex = 2;

  void _onItemTapped(int index) {
    setState(() {
      seclectedindex = index;
    });
    if (seclectedindex == 0) {
      Navigator.pushReplacementNamed(this.context, '/home');
    }

    else if (seclectedindex == 1) {
      Navigator.pushReplacementNamed(this.context, '/todo');
    }

    else if (seclectedindex == 2) {
      Navigator.pushReplacementNamed(this.context, '/planning');
    }

    else if (seclectedindex == 3) {
      Navigator.pushReplacementNamed(this.context, '/stuff');
    }
  }


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Cy Plan',
          style: TextStyle(

              color: Colors.amber,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'Arkanoid'

          ),


        ),
        centerTitle: true,
        backgroundColor: Colors.black,

      ),

      body: SfCalendar(
        view: CalendarView.week,
        firstDayOfWeek: 6,
        //initialDisplayDate: DateTime(2021, 03, 01, 08, 30),
        //initialSelectedDate: DateTime(2021, 03, 01, 08, 30),
        dataSource: MeetingDataSource(getAppointments()),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: 'Home',
            backgroundColor: Color(0xFF000000),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.check_box_outlined,
              size: 30,
            ),
            label: 'ToDo',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.date_range,
              size: 30,
            ),
            label: 'Plan',
            backgroundColor: Color(0xFF000000),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.note_add_sharp,
              size: 30,
            ),
            label: 'Stuff',
            backgroundColor: Color(0xFF000000),
          )
        ],
        currentIndex: seclectedindex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),

    );
  }

  List<Appointment> getAppointments() {
    List<Appointment> meetings = <Appointment>[];
    final DateTime today = DateTime.now();
    final DateTime startTime =
    DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 2));

    meetings.add(Appointment(
        startTime: startTime,
        endTime: endTime,
        subject: 'Board Meeting',
        color: Colors.blue,
        recurrenceRule: 'FREQ=DAILY;COUNT=10',
        isAllDay: false));

    return meetings;
  }
}
class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}






// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_calendar/calendar.dart';
//
// class Planning extends StatefulWidget {
//   @override
//   State<Planning> createState() => _PlanningState();
// }
//
// class _PlanningState extends State<Planning>{
// @override
//   Widget build(BuildContext context) {
//     return SfCalendar(
//       view: CalendarView.week,
//       firstDayOfWeek: 6,
//       //initialDisplayDate: DateTime(2021, 03, 01, 08, 30),
//       //initialSelectedDate: DateTime(2021, 03, 01, 08, 30),
//       dataSource: MeetingDataSource(getAppointments()),
//     );
//   }
// }
//
// List<Appointment> getAppointments() {
//   List<Appointment> meetings = <Appointment>[];
//   final DateTime today = DateTime.now();
//   final DateTime startTime =
//   DateTime(today.year, today.month, today.day, 9, 0, 0);
//   final DateTime endTime = startTime.add(const Duration(hours: 2));
//
//   meetings.add(Appointment(
//       startTime: startTime,
//       endTime: endTime,
//       subject: 'Board Meeting',
//       color: Colors.blue,
//       recurrenceRule: 'FREQ=DAILY;COUNT=10',
//       isAllDay: false));
//
//   return meetings;
// }
//
// class MeetingDataSource extends CalendarDataSource {
//   MeetingDataSource(List<Appointment> source) {
//     appointments = source;
//   }
// }