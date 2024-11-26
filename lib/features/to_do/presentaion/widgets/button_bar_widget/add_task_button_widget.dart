import 'package:flutter/material.dart';

import '../../../../../core/widgets/button_widget.dart';


Center addTaskButtonWidget({required final void Function() onPress}){
  return Center(
      child: ButtonWidget(
        text: "Add Task",
        onPress: onPress,
        isBlue: true,
      ),
    );
}
