import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarCardWidget extends StatefulWidget {
  final Function(DateTime selectedDate)? onDateSelected;

  const CalendarCardWidget({super.key, this.onDateSelected});

  @override
  State<CalendarCardWidget> createState() => _CalendarCardWidgetState();
}

class _CalendarCardWidgetState extends State<CalendarCardWidget> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 46, 42, 42),
        // color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color.fromARGB(255, 171, 163, 163).withOpacity(0.2),
          width: 1,
        ),
      ),
      child: TableCalendar(
        firstDay: DateTime.utc(2020, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
        focusedDay: _focusedDay,
        selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
        calendarFormat: CalendarFormat.month,
        rowHeight: 42,
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
          if (widget.onDateSelected != null) {
            widget.onDateSelected!(selectedDay);
          }
        },
        headerStyle: const HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          leftChevronIcon: Icon(
            Icons.chevron_left,
            color: Colors.orange,
            size: 24,
          ),
          rightChevronIcon: Icon(
            Icons.chevron_right,
            color: Colors.orange,
            size: 24,
          ),
        ),
        daysOfWeekStyle: const DaysOfWeekStyle(
          weekdayStyle: TextStyle(color: Colors.white60, fontSize: 12),
          weekendStyle: TextStyle(color: Colors.orangeAccent, fontSize: 12),
        ),
        calendarStyle: const CalendarStyle(
          defaultTextStyle: TextStyle(color: Colors.white, fontSize: 14),
          weekendTextStyle: TextStyle(color: Colors.white70, fontSize: 14),
          outsideDaysVisible: false,
          selectedDecoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.circle,
          ),
          todayDecoration: BoxDecoration(
            color: Colors.white24,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
