
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
        ScrollController _controller = ScrollController();


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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello Arwa...",
                              style: TextStyle(
                                  color: CustomColors.TextWhite,
                                  fontSize: sizes.subTitle,
                              ),
                            ),
                            const Text("Today you have 9 taskes",
                                style: TextStyle(
                                    color: CustomColors.TextWhite,
                                    fontSize: 15
                                )),
                          ],
                        ),
                        Container(
                          height: sizes.medSize,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle
                          ),
                          child: Image.asset("assets/images/photo.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: sizes.medSpace,
                        bottom: sizes.medSpace,
                      ),
                      padding: EdgeInsets.only(
                          left: sizes.miniSpace,
                          right: sizes.tiniSpace,
                          top: sizes.tiniSpace,
                        bottom: sizes.tiniSpace
                      ),
                      // height: sizes.reminderBoxHeight,
                      decoration: BoxDecoration(
                          color: CustomColors.HeaderCircle.withOpacity(0.3),
                          borderRadius: const BorderRadius.all(Radius.circular(15))
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: sizes.tiniSpace),
                            alignment:Alignment.topRight,
                            child: Image.asset("assets/images/fab-delete.png",
                              // fit: BoxFit.,
                              width: sizes.tiniSize,
                              height: sizes.tiniSize,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: sizes.miniSpace),
                            child: Row(
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
                                    const Text("13:00 PM", style: TextStyle(
                                        color: CustomColors.TextWhite,
                                        fontSize: 18
                                    ),),

                                  ],
                                ),
                                Image.asset("assets/images/bell-left.png"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: sizes.miniSpace,
            // ),
            Container(
              height: sizes.appbarSize,
              // color: CustomColors.TextGrey,
              child:
              // ListView(
              //   padding: EdgeInsets.only(top: 12),
              //   shrinkWrap: true,
              //   children: [
              //     Container(
              //       padding: EdgeInsets.symmetric(
              //           horizontal: sizes.miniSpace),
              //         child: Flexible(
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text("Today",style: TextStyle(
              //                   color: CustomColors.TextSubHeader,
              //                 fontSize: sizes.subTitle,
              //                 fontWeight: FontWeight.w800
              //               ),),
                            Flexible(
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                // controller: _controller,
                                // shrinkWrap: true,
                                // physics: ScrollPhysics(),
                                itemCount: 14,
                                  itemBuilder: (context,index){
                                return Container(
                                  margin: EdgeInsets.only(top: sizes.miniSpace),
                                  height: sizes.buttonHeightSize,
                                  decoration: const BoxDecoration(
                                      color: CustomColors.GreyBackground,
                                      boxShadow: [
                                        BoxShadow(
                                            color: CustomColors.GreyBorder,
                                            offset: Offset(3,3),
                                            blurRadius: 15,
                                            blurStyle: BlurStyle.outer
                                        )
                                      ],
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                      border: Border(
                                          left: BorderSide(
                                              color: CustomColors.YellowAccent,
                                              width: 8))
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: sizes.tiniSize,
                                      ),
                                      InkWell(
                                        child: Container(
                                          width: sizes.miniSize,
                                          decoration: BoxDecoration(
                                            // color: CustomColors.GreenShadow,
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: CustomColors.GreyBorder)
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: sizes.tiniSize,
                                      ),
                                      Text("07:00 AM",
                                        style: TextStyle(color: CustomColors.TextGrey),
                                      ),
                                      SizedBox(
                                        width: sizes.tiniSize,
                                      ),
                                      Text("Send project file",
                                        style: TextStyle(
                                            fontSize: sizes.h3,
                                            color: CustomColors.TextHeader,
                                            fontWeight: FontWeight.w600
                                        ),),
                                      Spacer(),
                                      Image.asset("assets/images/bell-small.png",
                                        height: 30,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        width: sizes.tiniSize,
                                      ),
                                    ],
                                  ),
                                                      
                                );
                              }),
                            )
                        
                  //         ],
                  //       ),
                  //     ),
                  // ),
                  // SizedBox(
                  //   height: sizes.miniSpace,
                  // ),
                  // Container(
                  //   padding: EdgeInsets.symmetric(
                  //       horizontal: sizes.miniSpace),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text("Tomorrow",style: TextStyle(
                  //           color: CustomColors.TextSubHeader,
                  //           fontSize: sizes.subTitle,
                  //           fontWeight: FontWeight.w800
                  //       ),),
                  //
                  //       ListView.builder(
                  //           padding: EdgeInsets.zero,
                  //           shrinkWrap: true,
                  //           // physics: NeverScrollableScrollPhysics(),
                  //           itemCount: 4,
                  //           itemBuilder: (context,int){
                  //             return Container(
                  //               margin: EdgeInsets.only(top: sizes.miniSpace),
                  //               height: sizes.buttonHeightSize,
                  //               decoration: const BoxDecoration(
                  //                   color: CustomColors.GreyBackground,
                  //                   boxShadow: [
                  //                     BoxShadow(
                  //                         color: CustomColors.GreyBorder,
                  //                         offset: Offset(3,3),
                  //                         blurRadius: 15,
                  //                         blurStyle: BlurStyle.outer
                  //                     )
                  //                   ],
                  //                   borderRadius: BorderRadius.all(Radius.circular(5)),
                  //                   border: Border(
                  //                       left: BorderSide(
                  //                           color: CustomColors.YellowAccent,
                  //                           width: 8))
                  //               ),
                  //               child: Row(
                  //                 children: [
                  //                   SizedBox(
                  //                     width: sizes.tiniSize,
                  //                   ),
                  //                   InkWell(
                  //                     child: Container(
                  //                       width: sizes.miniSize,
                  //                       decoration: BoxDecoration(
                  //                         // color: CustomColors.GreenShadow,
                  //                           shape: BoxShape.circle,
                  //                           border: Border.all(
                  //                               color: CustomColors.GreyBorder)
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   SizedBox(
                  //                     width: sizes.tiniSize,
                  //                   ),
                  //                   Text("07:00 AM",
                  //                     style: TextStyle(color: CustomColors.TextGrey),
                  //                   ),
                  //                   SizedBox(
                  //                     width: sizes.tiniSize,
                  //                   ),
                  //                   Text("Send project file",
                  //                     style: TextStyle(
                  //                         fontSize: sizes.h3,
                  //                         color: CustomColors.TextHeader,
                  //                         fontWeight: FontWeight.w600
                  //                     ),),
                  //                   Spacer(),
                  //                   Image.asset("assets/images/bell-small.png",
                  //                     height: 30,
                  //                     fit: BoxFit.fill,
                  //                   ),
                  //                   SizedBox(
                  //                     width: sizes.tiniSize,
                  //                   ),
                  //                 ],
                  //               ),
                  //
                  //             );
                  //           })
                  //
                  //     ],
                  //   ),
                  // ),
              //   ],
              // ),
            )
          ],
        ),
      ),
    );
  }
}

