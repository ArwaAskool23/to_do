import 'package:flutter/material.dart';

class TaskNameWidget extends StatefulWidget {
  const TaskNameWidget({super.key});

  @override
  State<TaskNameWidget> createState() => _TaskNameWidgetState();
}

class _TaskNameWidgetState extends State<TaskNameWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text("Add New Task",
            style: TextStyle(fontWeight: FontWeight.w500),),
        ),

        TextFormField(
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
              border: InputBorder.none
          ),

        ),
      ],
    );
  }
}
