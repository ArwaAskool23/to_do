
import 'package:flutter/cupertino.dart';

class Sizes{
  late BuildContext context;

  Sizes(this.context);

  //main size
  double get heightScreen => MediaQuery.of(context).size.height;
  double get widthScreen => MediaQuery.of(context).size.width;
  double get buttonHeightSize => heightScreen / 13.2;
  double get buttonWidthSize => widthScreen / 1.2;
  double get appbarSize => heightScreen / 3.2;
  double get towThirdsSize => heightScreen / 1.7;
  double get reminderBoxHeight => heightScreen / 6.5;
  double get miniSize =>heightScreen / 30;
  double get tiniSize =>heightScreen / 70;
  double get medSize =>heightScreen / 16;





  //spaces
  double get tiniSpace =>heightScreen / 90;
  double get miniSpace =>heightScreen / 40;
  double get medSpace =>heightScreen / 35;


  //Text
  double get title =>heightScreen / 38;
  double get subTitle =>heightScreen / 42;
  double get h3 =>heightScreen / 46;



}

