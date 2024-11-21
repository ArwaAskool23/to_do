import 'package:flutter/material.dart';

import '../../../../../core/colors.dart';
import '../../../../../core/constatnts/fixed_assets.dart';
import '../../../../../core/constatnts/size_constant.dart';

class RemainderBoxWidget extends StatelessWidget {
  final String nameOfTask;
  final String time;
  const RemainderBoxWidget({
    super.key,
    required this.nameOfTask,
    required this.time});

  @override
  Widget build(BuildContext context) {
    Sizes sizes = Sizes(context);

    String maxLength(String value) {
      int len = value.length;
      if (len >= 20) {
        return "${value.substring(0, 15)}...";
      } else {
        return value;
      }
    }

    return Container(
      margin: EdgeInsets.only(
        top: sizes.medSpace,
        bottom: sizes.medSpace,
      ),
      padding: EdgeInsets.only(
          left: sizes.miniSpace,
          right: sizes.tiniSpace,
          top: sizes.tiniSpace,
          bottom: sizes.tiniSpace
      ),
      // height: sizes.reminderBoxHeight,
      decoration: BoxDecoration(
          color: CustomColors.HeaderCircle.withOpacity(0.3),
          borderRadius: const BorderRadius.all(Radius.circular(15))
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: sizes.tiniSpace),
            alignment:Alignment.topRight,
            child: Image.asset(fabDelete,
              // fit: BoxFit.,
              width: sizes.tiniSize,
              height: sizes.tiniSize,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: sizes.miniSpace),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Today Remainder", style: TextStyle(
                        color: CustomColors.TextWhite,
                        fontSize: sizes.title
                    ),),
                    Text(maxLength(nameOfTask), style: const TextStyle(
                        color: CustomColors.TextWhite,
                        fontSize: 16
                    ),),
                    Text(time, style: const TextStyle(
                        color: CustomColors.TextWhite,
                        fontSize: 18
                    ),),
                  ],
                ),
                Image.asset(bellLeft),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
