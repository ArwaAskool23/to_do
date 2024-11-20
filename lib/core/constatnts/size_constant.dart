
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
  double get towThirdsSize => heightScreen / 1.4099;
  double get reminderBoxHeight => heightScreen / 6.5;
  double get tiniSize =>heightScreen / 50;




  //spaces
  double get miniSpace =>heightScreen / 40;
  double get medSpace =>heightScreen / 35;


  //Text
  double get title =>heightScreen / 35;


}

