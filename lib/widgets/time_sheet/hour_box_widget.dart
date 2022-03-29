import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:integer/config/months.dart';
import 'package:integer/widgets/time_sheet/notifier.dart';

class HourBox extends StatelessWidget {
  const HourBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int? index = Months.days[Notifier.getMonth];
    return Wrap(
      children: List.generate(index!, (index) {
        return Container(
            margin: const EdgeInsets.only(right: 10),
            child: Column(children: [
              SizedBox(height: 20),
              Container(
                height: 40,
                width: 30,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Text(
                  "8",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Text((index + 1).toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            ]));
      }),
    );
  }
}
