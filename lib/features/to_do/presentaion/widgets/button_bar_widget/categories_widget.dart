import 'package:flutter/material.dart';
import 'package:to_do/core/constatnts/size_constant.dart';

import '../../../../../core/colors.dart';

class CategoriesWidget extends StatefulWidget {
    final void Function() onPress;
    final bool isChoosed;
  const CategoriesWidget({
    super.key,
   required this.onPress, 
   required this.isChoosed});

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    Sizes sizes = Sizes(context);
    return   Container(
                              height: sizes.medSize,
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(color: CustomColors.GreyBorder),
                                bottom: BorderSide(color: CustomColors.GreyBorder)
                                )
                              ),
                              child:  ListView.builder(
                                itemCount: 5,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context,index){
                                  return   InkWell(
                                    onTap: widget.onPress,
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                        vertical: sizes.tiniSpace,
                                       horizontal: sizes.tiniSpace,),
                                      decoration: BoxDecoration(
                                        color: widget.isChoosed ? null :  CustomColors.YellowIcon,
                                        borderRadius: const BorderRadius.all(Radius.circular(8))
                                      ),
                                      child: Row(
                                        children: [
                                        Container(
                                          height: sizes.tiniSpace,
                                          width: sizes.tiniSpace,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: CustomColors.YellowIcon
                                          ),
                                        ),
                                        SizedBox(width: sizes.tiniSpace,),
                                      const Text("Personal",
                                       style: TextStyle(
                                        color: CustomColors.TextHeaderGrey,)),
                                        SizedBox(width: sizes.tiniSpace,)
                                      ],),
                                    ),
                                  );
                                },
                              )
                             );
  }
}
