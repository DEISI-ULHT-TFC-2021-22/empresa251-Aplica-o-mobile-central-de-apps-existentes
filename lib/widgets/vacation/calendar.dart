import 'package:flutter/material.dart';
import 'package:integer/config/palette.dart';
import 'package:integer/widgets/demo_values.dart';
import 'package:table_calendar/table_calendar.dart';

final Map<DateTime, List> _holidays = DemoValues.holidays;

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  late CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      calendarController: _calendarController,
      locale: 'en_US',
      holidays: _holidays,
      initialCalendarFormat: CalendarFormat.month,
      formatAnimation: FormatAnimation.slide,
      availableCalendarFormats: const {
        CalendarFormat.month: '',
      },
      calendarStyle: CalendarStyle(
        outsideDaysVisible: false,
        weekendStyle: const TextStyle().copyWith(color: Palette.orange),
        holidayStyle: const TextStyle().copyWith(color: Palette.green),
      ),
    );
  }
}