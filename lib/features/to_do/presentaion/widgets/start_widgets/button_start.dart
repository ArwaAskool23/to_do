

import 'package:to_do/core/widgets/button_widget.dart';

ButtonWidget buttonStart({required void Function() onPress}){
  return ButtonWidget(
    text: "Get Start",
    onPress: onPress,);
}