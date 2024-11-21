import 'package:flutter/material.dart';

import '../../../../../core/constatnts/fixed_assets.dart';
import '../../../../../core/constatnts/size_constant.dart';

class PhotoWidget extends StatefulWidget {
  const PhotoWidget({super.key});

  @override
  State<PhotoWidget> createState() => _PhotoWidgetState();
}

class _PhotoWidgetState extends State<PhotoWidget> {
  @override
  Widget build(BuildContext context) {
    Sizes sizes = Sizes(context);
    return InkWell(
      child: 
      Container(
        height: sizes.medSize,
        width: sizes.medSize,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
          image: DecorationImage(
            image:  AssetImage(personalAvatar),
            fit: BoxFit.cover,
          )),
        ),

    );
  }
}
