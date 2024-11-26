import 'package:flutter/material.dart';

import '../../../../../core/colors.dart';
import '../../../../../core/constatnts/fixed_assets.dart';

class AddIconWidget extends StatefulWidget {
  final double angle;
  final double height;
  final void Function()? onPress;

  const AddIconWidget({super.key,
    required this.angle,
    required this.height,
    this.onPress});

  @override
  State<AddIconWidget> createState() => _AddIconWidgetState();
}

class _AddIconWidgetState extends State<AddIconWidget> {
  @override
  Widget build(BuildContext context) {
    return                  Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Transform.rotate(
                            angle: widget.angle,
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 400),

                              width: 60,
                              alignment: Alignment.center,
                              height: 60,
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
        color: CustomColors.PurpleShadow,
        spreadRadius: 2,
        blurRadius: 8,
        offset: Offset(4, -3), 
      ),
                                ],
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                   begin: Alignment.topRight,
                                   end: Alignment.bottomLeft,
                                  colors: [
                                  CustomColors.PurpleLight,
                                  CustomColors.PurpleDark
                                ])
                              ),
                              child: Image.asset(fabAdd),
                            ),
                                                ),
                                                 onPressed: widget.onPress,
                          ),
            AnimatedContainer(
                      height: widget.height,
                      duration: const Duration(milliseconds: 400),

                    ),
                        ],
                      );
  }
}
