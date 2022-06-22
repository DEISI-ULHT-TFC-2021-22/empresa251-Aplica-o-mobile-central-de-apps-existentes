import 'package:flutter/material.dart';
import 'package:integer/config/months.dart';

class HourBox extends StatefulWidget {
  final int? counter;
  const HourBox({Key? key, required this.counter}) : super(key: key);

  @override
  _HourBox createState() => _HourBox();
}

class _HourBox extends State<HourBox> {

  int? index;

  _rebuild() {
    setState(() => index = Months.days[Months.month]);
  }

  @override
  Widget build(BuildContext context) {
    _rebuild();
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
              child: const Center(
                child: Text(
                  "8",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Text((index + 1).toString(),
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 15
                )
            ),
          ])
        );
      }),
    );
  }
}
