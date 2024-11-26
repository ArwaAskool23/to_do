import 'package:to_do/core/widgets/icon_button_bar_widget.dart';
import '../../../../../core/constatnts/fixed_assets.dart';

IconButtonBarWidget homeIconWidget({required void Function() onPress}){
  return IconButtonBarWidget(
    name: "Home",
   icon: home,
   onPress: onPress,
   );
}