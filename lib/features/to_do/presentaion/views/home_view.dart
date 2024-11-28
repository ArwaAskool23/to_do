import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do/core/colors.dart';
import 'package:to_do/core/constatnts/size_constant.dart';
import 'package:to_do/core/widgets/header_widget.dart';
import 'package:to_do/features/to_do/presentaion/providers/add_task_pro.dart';
import 'package:to_do/features/to_do/presentaion/providers/choose_category_pro.dart';
import 'package:to_do/features/to_do/presentaion/providers/done_taske_por.dart';
import 'package:to_do/features/to_do/presentaion/providers/nav_pro.dart';
import 'package:to_do/features/to_do/presentaion/providers/notification_pro.dart';
import 'package:to_do/core/widgets/button_bar_widget/button_bar_widget.dart';
import 'package:to_do/core/widgets/dialog.dart';
import 'package:to_do/features/to_do/presentaion/widgets/home_widgets/home_view_widgets/list_of_remainders_widget.dart';
import 'package:to_do/features/to_do/presentaion/widgets/home_widgets/task_view/list_of_categories.dart';

import '../../../../core/constatnts/fixed_assets.dart';


class HomeView extends ConsumerStatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  Widget build(BuildContext context) {
        Sizes sizes = Sizes(context);
  
        final addTaskPro = ref.watch(counterProvider);
        final doneTaskPro = ref.watch(checkProvider);
        final notificationPro = ref.watch(notificationProvider);
        final bool chooseCategoryPro = ref.watch(chooseCategoryProvider);
        final bool navPro = ref.watch(navProvider);

        return MaterialApp(
          home: Scaffold(
                body: Container(
          color: CustomColors.GreyBackground,
          child: 
          
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  
                  Column(
                    children: [
                      headerWidget(
                  context: context,
                  profileName: "name name name",
                  numOfTask: "15",
                  nameOfTask: "Meeting with client",
                  time: "5:45"),
                      navPro? ListOfRemaindersWidget(
                        day: "day",
                          name: "name name name name",
                          time: "time",
                           onPress: () {
                            
                             },
                             isCheck: doneTaskPro,
                              doneTaskOnPress: () { 
                                // ref.read(checkProvider.notifier).toggleValue();
                               },
                                notificationOnPress: () { 
                                ref.read(notificationProvider.notifier).toggleValue(1,2);
                                }, 
                                checkNotification: notificationPro,
                                 taskOnPress: () {  
                                dialog(
                                  context: context,
                                   sizes: sizes,
                                    categoryName: "categoryName",
                                     taskName: "'name name name name name name name name name name name name name name name name name name name name name name '",
                                      time: "time");
                                 },
                           ):
                      const ListOfCategories(
                        image: iconBriefcase, 
                        categoryName: "categoryName",
                         numOfTask: "numOfTask",
                          color: CustomColors.GreenBackground)
                    ],
                  ),
          
                  buttonBarWidget(
                    sizes: sizes,
                     addTaskPro: addTaskPro,
                      chooseCategoryPro: chooseCategoryPro, 
                      addTaskOnPress: () {
                        ref.read(counterProvider.notifier).toggleValue();
                        ref.read(counterProvider.notifier).setValue(addTaskPro.check);
                        }, categoriesOnPress: () { 
                          ref.read(chooseCategoryProvider.notifier).toggleValue();
                         }, navPro: navPro,
                          homeOnPress: () {
                            ref.read(navProvider.notifier).switchToHome();
                            }, taskOnPress: () { 
                            ref.read(navProvider.notifier).switchToTask();
          
                             })
                ],
              ),
          
                ),
              ),
        );
  }
}

