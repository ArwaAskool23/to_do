import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do/core/colors.dart';
import 'package:to_do/core/constatnts/size_constant.dart';
import 'package:to_do/core/widgets/button_widget.dart';
import 'package:to_do/core/widgets/header_widget.dart';
import 'package:to_do/features/to_do/presentaion/providers/add_task_pro.dart';
import 'package:to_do/features/to_do/presentaion/providers/choose_category_pro.dart';
import 'package:to_do/features/to_do/presentaion/providers/done_taske_por.dart';
import 'package:to_do/features/to_do/presentaion/providers/nav_pro.dart';
import 'package:to_do/features/to_do/presentaion/providers/notification_pro.dart';
import 'package:to_do/features/to_do/presentaion/widgets/button_bar_widget/add_icon_widget.dart';
import 'package:to_do/features/to_do/presentaion/widgets/button_bar_widget/add_task_box_widget.dart';
import 'package:to_do/features/to_do/presentaion/widgets/button_bar_widget/add_task_button_widget.dart';
import 'package:to_do/features/to_do/presentaion/widgets/button_bar_widget/button_bar_widget.dart';
import 'package:to_do/features/to_do/presentaion/widgets/button_bar_widget/categories_widget.dart';
import 'package:to_do/features/to_do/presentaion/widgets/button_bar_widget/date_widget.dart';
import 'package:to_do/features/to_do/presentaion/widgets/button_bar_widget/home_icon_widget.dart';
import 'package:to_do/features/to_do/presentaion/widgets/button_bar_widget/task_icon_widget.dart';
import 'package:to_do/features/to_do/presentaion/widgets/button_bar_widget/task_name_widget.dart';
import 'package:to_do/features/to_do/presentaion/widgets/home_widgets/dialog.dart';
import 'package:to_do/features/to_do/presentaion/widgets/home_widgets/list_of_remainders_widget.dart';

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

        TextEditingController controller = TextEditingController();

        String formatDate(DateTime dateTime) {
    String day = dateTime.day.toString().padLeft(2, '0');
    String month = dateTime.month.toString().padLeft(2, '0');
    String year = dateTime.year.toString();
    return '$year-$month-$day';
  }

          Future<void> _selectDate(BuildContext context) async {
    final ThemeData theme = Theme.of(context);
    final DateTime? picked = await showDatePicker(
      context: context,
      cancelText: "Cancel",
      confirmText: "OK",
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: theme.copyWith(
            colorScheme: theme.colorScheme.copyWith(
              // primary: AppColors.secondaryColor,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                // foregroundColor: AppColors.secondaryColor,
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      setState(() {
        controller.text = formatDate(picked);
        controller.text;
        // _validateText(controller.text);
      });
    }
  }
  
  
        final addTaskPro = ref.watch(counterProvider);
        final bool doneTaskPro = ref.watch(checkProvider);
        final bool notificationPro = ref.watch(notificationProvider);
        final bool chooseCategoryPro = ref.watch(chooseCategoryProvider);
        final bool navPro = ref.watch(navProvider);



        return Scaffold(

          
          
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
                              ref.read(checkProvider.notifier).toggleValue();
                             },
                              notificationOnPress: () { 
                              ref.read(notificationProvider.notifier).toggleValue();
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
                    Container(
                      height: sizes.towThirdsSize,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                         itemBuilder: (context, index){
                      
                          return Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(15),
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
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: CustomColors.YellowBackground,
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                      offset: Offset(4, -3), 
                                   ),
                                ],
                                shape: BoxShape.circle,
                                color: CustomColors.YellowBackground
                                // gradient: LinearGradient(
                                //    begin: Alignment.topRight,
                                //    end: Alignment.bottomLeft,
                                //   colors: [
                                //   CustomColors.PurpleLight,
                                //   CustomColors.PurpleDark
                                // ])
                              ),
                              child: Image.asset(iconUser),
                            ),

                            SizedBox(
                                  height: sizes.tiniSpace,
                                ),

                            Text("Personal",
                            style: TextStyle(fontSize: 20),
                            ),

                            Text("24 task",
                            style: TextStyle(
                              fontSize: 15,
                              color: CustomColors.TextGrey
                              ),
                            )
                                                
                              ],
                            ),
                          );
                      
                         }),
                    )
                   
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
    );
  }
}

