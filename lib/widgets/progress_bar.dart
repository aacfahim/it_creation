import 'package:flutter/material.dart';
import 'package:it_creation/utils/colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({super.key});

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 45.0,
      lineWidth: 10.0,
      percent: 0.70,
      center: Text(
        "70%",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      progressColor: primaryColor,
      backgroundColor: Colors.white,
    );
  }
}
