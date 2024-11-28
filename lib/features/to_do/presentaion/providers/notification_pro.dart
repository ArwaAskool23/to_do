import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotificationPro extends StateNotifier<List<List<bool>>> {



NotificationPro() : super(List.generate(3, (index) => List.generate(4, (index) => false)));


 void toggleValue(int indexDay, int indexTask) {
    state[indexDay][indexTask] = !state[indexDay][indexTask]; 
  }
  }

final notificationProvider = StateNotifierProvider<NotificationPro, List<List<bool>>>((ref) {
  return NotificationPro(); 
});
