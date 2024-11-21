import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:to_do/features/to_do/presentaion/widgets/home_widgets/remainder_widget.dart';

import '../../../../../core/colors.dart';
import '../../../../../core/constatnts/fixed_assets.dart';
import '../../../../../core/constatnts/size_constant.dart';

class ListOfRemaindersWidget extends StatelessWidget {
  final String day;
  final String name;
  final String time;
  const ListOfRemaindersWidget({super.key,
    required this.day,
    required this.name,
    required this.time});

  @override
  Widget build(BuildContext context) {
    Sizes sizes = Sizes(context);

    return  SizedBox(
      height: sizes.towThirdsSize,
      child: ListView.builder(
        itemCount: 3,
        padding: const EdgeInsets.only(top: 12),
        itemBuilder: (BuildContext context, int index) {
          return  Column
            (children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: sizes.miniSpace),
              child: Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(day,style: TextStyle(
                        color: CustomColors.TextSubHeader,
                        fontSize: sizes.subTitle,
                        fontWeight: FontWeight.w800
                    ),),

                    ListView.builder(
                        padding: EdgeInsets.zero,
                        // controller: _controller,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 14,
                        itemBuilder: (context,index){
                          return Slidable(
                            endActionPane: ActionPane(
                                motion: const StretchMotion(),
                                children: [
                                  
                                  IconButton(onPressed: (){},
                                      icon: Container(
                                        alignment: Alignment.center,

                                          child: Container(
                                            padding: const EdgeInsets.all(15),
                                            margin: const EdgeInsets.only(left: 25, top: 15),
                                            height: sizes.iconSize,
                                            width: sizes.iconSize,
                                            decoration: const BoxDecoration(
                                                color: CustomColors.TrashRedBackground,
                                            shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image:  AssetImage(trash),
                                                  // fit: BoxFit.contain,
                                                )),
                                          ),
                                      ))
                                ]),
                            child: RemainderWidget(
                                time: time,
                                name: name),
                          );
                        }),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: sizes.miniSpace,
            ),

          ],);
        },
      ),
    );
  }
}
