import 'package:flutter/material.dart';
import 'package:to_do/core/constatnts/size_constant.dart';


class IconButtonBarWidget extends StatefulWidget {
  final String name;
  final String icon;
  final void Function()? onPress;
  final Color color;
  const IconButtonBarWidget({super.key,
   this.onPress, 
   required this.name, 
   required this.icon, 
   required this.color});

  @override
  State<IconButtonBarWidget> createState() => _IconButtonBarWidgetState();
}

class _IconButtonBarWidgetState extends State<IconButtonBarWidget> {
  @override
  Widget build(BuildContext context) {
      Sizes sizes = Sizes(context);
    return IconButton(
      icon: Container(
        padding: EdgeInsets.symmetric(horizontal: sizes.tiniSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(AssetImage(widget.icon),
            color: widget.color,
            ),
            Text(widget.name, style: TextStyle(color: widget.color),)
          ],
        ),
      ),
      onPressed: widget.onPress,
    );
  }
}
