import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:integer/config/months.dart';
import 'package:integer/widgets/time_sheet/notifier.dart';

class HourBox extends StatefulWidget {
  const HourBox({Key? key}) : super(key: key);

  @override
  _HourBox createState() => _HourBox();
}

class _HourBox extends State<HourBox> {
  @override
  Widget build(BuildContext context) {
    int? index;

    setState(() => index = Months.days[Months.month]);

    print(index);

    return Wrap(
      children: List.generate(index!, (index) {
        return Container(
            margin: const EdgeInsets.only(right: 10),
            child: Column(children: [
              const SizedBox(
                height: 25,
                width: 40,
              ),
              Container(
                height: 40,
                width: 50,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: const Text(
                  "8",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Text((index + 1).toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15)),
            ]));
      }),
    );
  }
}
