import 'package:flutter/material.dart';
import '../../../../../core/colors.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 30,
            vertical: 15
        ),
        child: const Text("'Lorem ipsum dolor sit amet,"
            " consectetur adipiscing elit. "
            "Mauris pellentesque erat in blandit luctus.'",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: CustomColors.TextHeaderGrey

          ),textAlign: TextAlign.center,
        )
    );
  }
}
