import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("reminders made simple",
      style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold),);
  }
}
