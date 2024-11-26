import 'package:to_do/core/widgets/icon_button_bar_widget.dart';
import '../../../../../core/constatnts/fixed_assets.dart';

IconButtonBarWidget taskIconWidget({required void Function() onPress}){
  return IconButtonBarWidget(
    name: "Task",
     icon: task,
     onPress: onPress,
     );
}
