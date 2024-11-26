import 'package:flutter/material.dart';
import 'package:to_do/core/colors.dart';
import 'package:to_do/core/constatnts/size_constant.dart';
import 'package:to_do/features/to_do/presentaion/widgets/button_bar_widget/add_icon_widget.dart';
import 'package:to_do/features/to_do/presentaion/widgets/button_bar_widget/add_task_button_widget.dart';
import 'package:to_do/features/to_do/presentaion/widgets/button_bar_widget/categories_widget.dart';
import 'package:to_do/features/to_do/presentaion/widgets/button_bar_widget/date_widget.dart';
import 'package:to_do/features/to_do/presentaion/widgets/button_bar_widget/task_name_widget.dart';

Widget addTaskBoxWidget({
  required Sizes sizes, 
  required double height,
  required void Function() categoriesOnPress,
  required bool isChoosed,
  required void Function() addTaskOnPress,
  required double angle,
  required double space,
  required void Function() addTaskButtonOnPress,

}){
  return Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                  AnimatedContainer(
                    padding: EdgeInsets.symmetric(horizontal: sizes.tiniSize),
                    height: space,
                    width: sizes.widthScreen,
                    decoration: const BoxDecoration(
                      color: CustomColors.GreyBackground,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(120),
                        topRight: Radius.circular(120)
                        )
                    ),
                    duration: const Duration(milliseconds: 400),
                    child:
                     Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: sizes.medSpace2,),

                            const TaskNameWidget(),

                             SizedBox(
                              height: sizes.medSpace,
                            ),
                     
                            CategoriesWidget(
                              onPress: categoriesOnPress,
                             isChoosed: isChoosed),
                             
                             SizedBox(height: sizes.medSpace),

                             const DateWidget(),
                             SizedBox(height: sizes.miniSpace,),
                          addTaskButtonWidget(onPress: addTaskButtonOnPress)
                    
                          ],
                        ),
                  ),

      AddIconWidget(
        angle: angle,
       height: height,
       onPress: addTaskOnPress,
       )

                  ],
                );
}