import 'package:flutter/material.dart';
import 'package:to_do/core/colors.dart';

import '../../../../../core/constatnts/fixed_assets.dart';

class IconButtonBarWidget extends StatefulWidget {
  final String name;
  final String icon;
  final void Function()? onPress;
  const IconButtonBarWidget({super.key,
   this.onPress, 
   required this.name, 
   required this.icon});

  @override
  State<IconButtonBarWidget> createState() => _IconButtonBarWidgetState();
}

class _IconButtonBarWidgetState extends State<IconButtonBarWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageIcon(AssetImage(widget.icon)),
          Text(widget.name, style: const TextStyle(color: CustomColors.TextSubHeaderGrey),)
        ],
      ),
      onPressed: widget.onPress,
    );
  }
}
