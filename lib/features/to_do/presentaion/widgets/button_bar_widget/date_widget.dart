import 'package:flutter/material.dart';
import 'package:to_do/core/constatnts/size_constant.dart';

import '../../../../../core/colors.dart';

class DateWidget extends StatefulWidget {
  const DateWidget({super.key});

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  @override
  Widget build(BuildContext context) {
    Sizes sizes = Sizes(context);

    TextEditingController controller = TextEditingController();


    String formatDate(DateTime dateTime) {
      String day = dateTime.day.toString().padLeft(2, '0');
      String month = dateTime.month.toString().padLeft(2, '0');
      String year = dateTime.year.toString();
      return '$year-$month-$day';
    }

    Future<void> _selectDate(BuildContext context) async {
      final ThemeData theme = Theme.of(context);
      final DateTime? picked = await showDatePicker(
        context: context,
        cancelText: "Cancel",
        confirmText: "OK",
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now(),
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: theme.copyWith(
              colorScheme: theme.colorScheme.copyWith(
                // primary: AppColors.secondaryColor,
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  // foregroundColor: AppColors.secondaryColor,
                ),
              ),
            ),
            child: child!,
          );
        },
      );
      if (picked != null) {
        setState(() {
          controller.text = formatDate(picked);
          controller.text;
        });
      }
    }


    return Column(
      children: [
        const Text("Choose date",
          textAlign: TextAlign.start,
        ),

        SizedBox(
          width: sizes.dateWidthSize,
          child: TextFormField(
            onTap: () async {
              setState(() {

              });
              await _selectDate;
            },
            keyboardType: TextInputType.none,
            decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.calendar_today_outlined,
                    color: CustomColors.GreyBorder,
                    size: 18,
                  ),
                  onPressed: () {
                    setState(() {
                    });
                    // await
                    _selectDate;
                  },
                ),
                border: InputBorder.none
            ),
          ),
        ),

      ],
    );
  }
}
