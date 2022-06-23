import 'package:flutter/material.dart';
import 'package:integer/config/months.dart';

import 'button_widget.dart';

class DatePickerWidget extends StatefulWidget {
  final VoidCallback onDatePicked;

  const DatePickerWidget({Key? key, required this.onDatePicked}) : super(key: key);

  @override
  _DatePickerWidget createState() => _DatePickerWidget();
}

class _DatePickerWidget extends State<DatePickerWidget> {
  DateTime? date;

  String getText() {
    if (date == null) {
      return 'Escolha o mês';
    } else {
      return '${Months.dayOfMonth[date?.month]} / ${date?.year}';
    }
  }

  @override
  Widget build(BuildContext context) => ButtonHeaderWidget(
    title: 'Date',
    text: getText(),
    onClicked: () {
      pickDate(context);
    }
  );

  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: date ?? initialDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (newDate == null) return;

    setState(() => date = newDate);
    setState(() => Months.month = date!.month);
    setState(() => Months.date = newDate);
    widget.onDatePicked();
  }
}
