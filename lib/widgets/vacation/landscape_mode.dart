import 'package:flutter/material.dart';
import 'package:integer/widgets/vacation/vacation_label_card.dart';
import 'package:integer/config/palette.dart';

import 'calendar.dart';

class VacationLandscapeMode extends StatefulWidget {
  const VacationLandscapeMode({Key? key}) : super(key: key);

  @override
  _VacationLandscapeModeState createState() => _VacationLandscapeModeState();
}

class _VacationLandscapeModeState extends State<VacationLandscapeMode> {

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
          flex: 1,
          child: Calendar(),
        ),
      ],
    );
  }
}
