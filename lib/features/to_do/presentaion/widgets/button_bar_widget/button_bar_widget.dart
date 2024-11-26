
import 'package:flutter/material.dart';
import 'package:to_do/features/to_do/presentaion/providers/add_task_pro.dart';
import 'package:to_do/features/to_do/presentaion/widgets/button_bar_widget/add_task_box_widget.dart';
import 'package:to_do/features/to_do/presentaion/widgets/button_bar_widget/home_icon_widget.dart';
import 'package:to_do/features/to_do/presentaion/widgets/button_bar_widget/task_icon_widget.dart';
import '../../../../../core/colors.dart';
import '../../../../../core/constatnts/size_constant.dart';

Widget buttonBarWidget({
  required Sizes sizes, 
  required TaskState addTaskPro, 
  required bool chooseCategoryPro,
  required void Function() addTaskOnPress,
  required void Function() categoriesOnPress,
  required void Function() homeOnPress,
  required void Function() taskOnPress,
  required bool navPro
  }){
  return Stack(
    alignment: Alignment.bottomCenter,
    children: [
      SizedBox(
                      height: sizes.buttonBarSize,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          homeIconWidget(onPress: homeOnPress),
                          taskIconWidget(onPress: taskOnPress)
                        ],),
                    ),

                    Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     InkWell(
                       onTap: addTaskOnPress,
                       child: Container(
                        alignment: Alignment.topCenter,
                              color: CustomColors.GreyBorderOpecety,
                              height: addTaskPro.shadow,
                            )
                     ),
                   ],
                 ),

                 addTaskBoxWidget(
                  sizes: sizes,
                  height: addTaskPro.exit,
                   categoriesOnPress: categoriesOnPress,

                   isChoosed: chooseCategoryPro, 
                   addTaskOnPress: addTaskOnPress,

                   angle: addTaskPro.round,
                   space: addTaskPro.addBox,
                   addTaskButtonOnPress: (){})
    ],
  );
}