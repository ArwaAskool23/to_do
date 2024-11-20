
import 'package:flutter/material.dart';
import 'package:to_do/core/colors.dart';
import 'package:to_do/core/constatnts/size_constant.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
        Sizes sizes = Sizes(context);

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              // height: sizes.appbarSize,
              // width: sizes.widthScreen,
              color: CustomColors.BlueLight,
              padding: EdgeInsets.symmetric(horizontal: sizes.miniSpace),
              child: SafeArea(
                child: Column(
                  children: [
                    SizedBox(height: sizes.miniSpace,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello Arwa...",
                              style: TextStyle(
                                  color: CustomColors.TextWhite,
                                  fontSize: 20
                              ),
                            ),
                            Text("Today you have 9 taskes",
                                style: TextStyle(
                                    color: CustomColors.TextWhite,
                                    fontSize: 15
                                )),
                          ],
                        ),
                        CircleAvatar(
                          radius: 20,
                          child: Image.asset("assets/images/photo.png"),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: sizes.miniSpace,
                          right: sizes.miniSpace,
                          top: sizes.medSpace,
                        bottom: sizes.medSpace,
                      ),
                      padding: EdgeInsets.only(left: sizes.medSpace,
                          right: sizes.miniSpace,
                          top: sizes.miniSpace),
                      // height: sizes.reminderBoxHeight,
                      decoration: BoxDecoration(
                          color: CustomColors.HeaderCircle.withOpacity(0.3),
                          borderRadius: const BorderRadius.all(Radius.circular(15))
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: sizes.miniSpace),
                            alignment:Alignment.topRight,
                            child: Image.asset("assets/images/fab-delete.png",
                              // fit: BoxFit.,
                              width: sizes.tiniSize,
                              height: sizes.tiniSize,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Today Remainder", style: TextStyle(
                                      color: CustomColors.TextWhite,
                                      fontSize: sizes.title
                                  ),),
                                  const Text("Meeting with client", style: TextStyle(
                                      color: CustomColors.TextWhite,
                                      fontSize: 16
                                  ),),
                                  Text("13:00 PM", style: TextStyle(
                                      color: CustomColors.TextWhite,
                                      fontSize: 18
                                  ),),
                    
                                ],
                              ),
                              Image.asset("assets/images/bell-left.png"),
                    
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: sizes.miniSpace,
            ),
            // Column(
            //   children: [
            //     Text("Today",style: TextStyle(color: CustomColors.TextHeader),)
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}

