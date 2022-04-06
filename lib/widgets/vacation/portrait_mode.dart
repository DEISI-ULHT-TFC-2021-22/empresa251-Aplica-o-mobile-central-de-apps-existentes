import 'package:flutter/material.dart';
import 'package:integer/widgets/vacation/vacation_label_card.dart';
import 'package:integer/config/palette.dart';

import 'calendar.dart';

class VacationPortraitMode extends StatefulWidget {
  const VacationPortraitMode({Key? key}) : super(key: key);

  @override
  _VacationPortraitModeState createState() => _VacationPortraitModeState();
}

class _VacationPortraitModeState extends State<VacationPortraitMode> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Expanded(
          flex: 2,
          child: VacationLabelCard(),
        ),
        const Divider(color: Palette.orange),
        Expanded(
          flex: 4,
          child: Calendar(),
        ),
      ],
    );
  }
}
