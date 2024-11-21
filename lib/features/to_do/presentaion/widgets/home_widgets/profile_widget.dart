import 'package:flutter/material.dart';
import 'package:to_do/features/to_do/presentaion/widgets/home_widgets/photo_widget.dart';

import 'name_widget.dart';

Row profileWidget({required String name, required String numOfTasks}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      NameWidget(name: name, numOfTasks: numOfTasks),
      const PhotoWidget()
    ],
  );
}