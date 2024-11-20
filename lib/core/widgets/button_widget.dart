import 'package:flutter/material.dart';
import '../colors.dart';
import '../constatnts/size_constant.dart';

class ButtonWidget extends StatefulWidget {
  final String text;
  final bool isBlue;
  final void Function() onPress;
  const ButtonWidget({
    super.key,
    required this.text,
    this.isBlue = false,
    required this.onPress});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    Sizes sizes = Sizes(context);
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          elevation: 6,
          shadowColor: CustomColors.TextWhite,
        ),
        onPressed: widget.onPress,
        child: Material(
          borderRadius: BorderRadius.circular(50),
          shadowColor: CustomColors.GreyBorder,
          child: Container(
            width: sizes.buttonWidthSize,
            height: sizes.buttonHeightSize,
            decoration: BoxDecoration(
              gradient:widget.isBlue?  const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                 colors: [
                   CustomColors.BlueLight,
                   CustomColors.BlueDark
                ],
              ) :const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  CustomColors.GreenLight,
                  CustomColors.GreenDark
                ],
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(widget.text,textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                  color: CustomColors.TextWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ));
  }
}
