import 'package:flutter/material.dart';
import 'package:to_do/core/widgets/header_widgets/profile_widget.dart';
import 'package:to_do/core/widgets/header_widgets/remainder_box_widget.dart';

import '../colors.dart';
import '../constatnts/size_constant.dart';


Widget headerWidget({required BuildContext context,
  required String profileName,
  required String numOfTask,
  required String nameOfTask,
  required String time
}){
  Sizes sizes = Sizes(context);
  return Container(
    color: CustomColors.BlueLight,
    padding: EdgeInsets.symmetric(horizontal: sizes.miniSpace),
    child: SafeArea(
      child: Column(
        children: [
          SizedBox(height: sizes.miniSpace,),
          profileWidget(name: profileName, numOfTasks: numOfTask),
          RemainderBoxWidget(nameOfTask: nameOfTask, time: time)
        ],
      ),
    ),
  );
}