import 'package:flutter/material.dart';
import 'package:to_do/core/constatnts/size_constant.dart';
import '../../../../../../core/colors.dart';

class CategoryCardWidget extends StatefulWidget {
  final String image;
  final String categoryName;
  final String numOfTask;
  final Color color;
  const CategoryCardWidget({super.key,
    required this.image,
    required this.categoryName,
    required this.numOfTask,
    required this.color});

  @override
  State<CategoryCardWidget> createState() => _CategoryCardWidgetState();
}

class _CategoryCardWidgetState extends State<CategoryCardWidget> {
  @override
  Widget build(BuildContext context) {
    Sizes sizes = Sizes(context);
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(15),
      height: 50,
      width: 50,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: CustomColors.GreyBorderOpecety,
            spreadRadius: 2,
            blurRadius: 10,
          ),

        ],
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: CustomColors.GreyBackground,
      ),
      child: Column(

        children: [
          SizedBox(
            height: sizes.medSpace,
          ),
          Container(
            width: 60,
            alignment: Alignment.center,
            height: 60,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: widget.color,
                    spreadRadius: 2,
                    blurRadius: 8,
                  ),
                ],
                shape: BoxShape.circle,
                color: widget.color
            ),
            child: Image.asset(widget.image),
          ),

          SizedBox(
            height: sizes.tiniSpace,
          ),

          Text(widget.categoryName,
            style: const TextStyle(fontSize: 20),
          ),

           Text("${widget.numOfTask} task",
            style: const TextStyle(
                fontSize: 15,
                color: CustomColors.TextGrey
            ),
          )

        ],
      ),
    );
  }
}
