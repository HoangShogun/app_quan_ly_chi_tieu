import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: const Card(
        color: Colors.pink,
        elevation: 5,
        child: Text("Chart!"),
      ),
    );
  }
}
