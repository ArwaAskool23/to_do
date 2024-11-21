import 'package:flutter/material.dart';

import '../../../../../core/colors.dart';
import '../../../../../core/constatnts/size_constant.dart';

class NameWidget extends StatelessWidget {
  final String name;
  final String numOfTasks;
  const NameWidget({super.key,
    required this.name,
    required this.numOfTasks});

  @override
  Widget build(BuildContext context) {
    Sizes sizes = Sizes(context);

    String maxLength(String value) {
    int len = value.length;
    if (len >= 15) {
      return "${value.substring(0, 10)}...";
    } else {
      return value;
    }
  }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hello ${maxLength(name)}!",
          style: TextStyle(
            color: CustomColors.TextWhite,
            fontSize: sizes.subTitle,
          ),
        ),
         Text("Today you have $numOfTasks taskes",
            style: const TextStyle(
                color: CustomColors.TextWhite,
                fontSize: 15
            )),
      ],
    );
  }
}
