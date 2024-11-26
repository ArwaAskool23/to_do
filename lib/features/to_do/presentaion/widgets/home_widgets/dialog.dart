import 'package:flutter/material.dart';

import '../../../../../core/colors.dart';
import '../../../../../core/constatnts/size_constant.dart';

Future dialog({
  required BuildContext context,
  required Sizes sizes,
  required String categoryName,
  required String taskName,
  required String time
  }){
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(categoryName),
          content: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(taskName,
                 style: const TextStyle(
                  color: CustomColors.TextSubHeaderGrey),),
                 SizedBox(height: sizes.miniSpace,),
                 Text(time,
                 style: const TextStyle(
                  color: CustomColors.TextSubHeaderGrey,
                   fontSize: 18),),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); 
              },
              child: const Text('cencel'),
            ),
          ],
        );
      },
    );
                               
}