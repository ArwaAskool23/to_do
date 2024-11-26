import 'package:flutter/material.dart';

import '../../../../../core/colors.dart';
import '../../../../../core/constatnts/fixed_assets.dart';
import '../../../../../core/constatnts/size_constant.dart';

class RemainderWidget extends StatefulWidget {
  final void Function() doneTaskOnPress;
  final String time;
  final String name;
  final void Function() notificationOnPress;
  final bool checkNotification;
  final bool isCheck;
  final void Function() taskOnPress;

  const RemainderWidget({super.key,
    required this.doneTaskOnPress,
    required this.time,
    required this.name,
    required this.notificationOnPress, 
    required this.isCheck,
    this.checkNotification = false,
     required this.taskOnPress});

  @override
  State<RemainderWidget> createState() => _RemainderWidgetState();
}

class _RemainderWidgetState extends State<RemainderWidget> {
  @override
  Widget build(BuildContext context) {
    Sizes sizes = Sizes(context);

    String maxLength(String value) {
      int len = value.length;
      if (len >= 15) {
        return "${value.substring(0, 15)}...";
      } else {
        return value;
      }
    }

    return InkWell(
      onTap: widget.taskOnPress,
      child: Container(
        margin: EdgeInsets.only(top: sizes.miniSpace),
        height: sizes.buttonHeightSize,
        decoration: const BoxDecoration(
            color: CustomColors.GreyBackground,
            boxShadow: [
              BoxShadow(
                  color: CustomColors.GreyBorder,
                  offset: Offset(3,3),
                  blurRadius: 15,
                  blurStyle: BlurStyle.outer
              )
            ],
            borderRadius: BorderRadius.all(Radius.circular(5)),
            border: Border(
                left: BorderSide(
                    color: CustomColors.YellowAccent,
                    width: 8))
        ),
        child: Row(
          children: [
            SizedBox(
              width: sizes.tiniSize,
            ),
            InkWell(
              onTap: widget.doneTaskOnPress,
              child: Container(
                width: sizes.miniSize,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: CustomColors.GreyBorder),
                        
                ),
                child: widget.isCheck? Image.asset(checked,
                fit: BoxFit.fill,
                ): null,
              ),
            ),
            SizedBox(
              width: sizes.tiniSize,
            ),
            Text(widget.time,
              style: const TextStyle(color: CustomColors.TextGrey),
            ),
            SizedBox(
              width: sizes.tiniSize,
            ),
            Text(maxLength(widget.name),
              style: TextStyle(
                  fontSize: sizes.h3,
                  color: widget.isCheck? CustomColors.TextGrey :CustomColors.TextHeader,
                  fontWeight: FontWeight.w600,
                  decoration: widget.isCheck? TextDecoration.lineThrough: TextDecoration.none
              ),),
            const Spacer(),
            IconButton(
              onPressed: widget.notificationOnPress,
              icon: Image.asset(bellSmall,
                height: 23,
                fit: BoxFit.fill,
                color: widget.checkNotification? CustomColors.YellowIcon: CustomColors.GreyBorder,
              ),
            ),
            SizedBox(
              width: sizes.tiniSize,
            ),
          ],
        ),
      ),
    
    );
  }
}
