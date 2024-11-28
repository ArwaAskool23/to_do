import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:to_do/features/to_do/presentaion/widgets/home_widgets/home_view_widgets/remainder_widget.dart';

import '../../../../../../core/colors.dart';
import '../../../../../../core/constatnts/fixed_assets.dart';
import '../../../../../../core/constatnts/size_constant.dart';
import '../../../providers/done_taske_por.dart';
import '../../../providers/notification_pro.dart';

class ListOfRemaindersWidget extends ConsumerStatefulWidget {
  final String day;
  final String name;
  final String time;
  final void Function() onPress;
  final void Function() doneTaskOnPress;
  final void Function() notificationOnPress;
  final void Function() taskOnPress;
  final List<List<bool>> isCheck;
  final List<List<bool>> checkNotification;
  
  const ListOfRemaindersWidget({super.key,
    required this.day,
    required this.name,
    required this.time, 
    required this.onPress, 
    required this.isCheck, 
    required this.doneTaskOnPress,
    required this.notificationOnPress,
    required this.checkNotification,
    required this.taskOnPress});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ListOfRemaindersWidgetState();
}

class _ListOfRemaindersWidgetState extends ConsumerState<ListOfRemaindersWidget> {
  @override
  Widget build(BuildContext context) {
    Sizes sizes = Sizes(context);

    return  SizedBox(
      height: sizes.towThirdsSize,
      child: ListView.builder(
        itemCount: 3,
        padding: const EdgeInsets.only(top: 12),
        itemBuilder: (BuildContext context, int indexDay) {
          return  Column
            (children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: sizes.miniSpace),
              child: Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.day,style: TextStyle(
                        color: CustomColors.TextSubHeader,
                        fontSize: sizes.subTitle,
                        fontWeight: FontWeight.w800
                    ),),

                    ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (context,indexTask){
                          return Slidable(
                            endActionPane: ActionPane(
                                motion: const StretchMotion(),
                                children: [
                                  
                                  IconButton(onPressed: widget.onPress,
                                      icon: Container(
                                        alignment: Alignment.center,

                                          child: Container(
                                            padding: const EdgeInsets.all(10),
                                            margin: EdgeInsets.symmetric(
                                              horizontal: sizes.miniSpace,
                                              vertical: sizes.tiniSize
                                                ),
                                            height: sizes.iconSize,
                                            width: sizes.iconSize,
                                            decoration: const BoxDecoration(
                                                color: CustomColors.TrashRedBackground,
                                            shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image:  AssetImage(trash),
                                                )),
                                          ),
                                      ))
                                ]),
                            child: RemainderWidget(
                                time: widget.time,
                                name: widget.name,
                                isCheck: widget.isCheck[indexDay][indexTask], 
                                doneTaskOnPress:() { 
                                  setState(() {
                                  });
                                       ref.read(checkProvider.notifier).toggleValue(indexDay,indexTask);
                                  },
                                notificationOnPress: () { 
                                  setState(() {
                                  });
                              ref.read(notificationProvider.notifier).toggleValue(indexDay,indexTask);
                              }, 
                                checkNotification: widget.checkNotification[indexDay][indexTask],
                                 taskOnPress: widget.taskOnPress,
                                ),
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
