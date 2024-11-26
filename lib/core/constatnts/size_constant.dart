
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
  double get iconSize =>heightScreen / 20;
  double get buttonBarSize =>heightScreen / 10.5;
  double get addSize =>heightScreen / 1.8;
  double get dateWidthSize =>heightScreen / 6;








  //spaces
  double get tiniSpace =>heightScreen / 90;
  double get miniSpace =>heightScreen / 40;
  double get medSpace =>heightScreen / 35;
  double get medSpace2 =>heightScreen / 10;
  double get maxSpace =>heightScreen / 2;



  //Text
  double get title =>heightScreen / 38;
  double get subTitle =>heightScreen / 42;
  double get h3 =>heightScreen / 46;



}

