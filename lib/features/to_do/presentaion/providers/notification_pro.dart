import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotificationPro extends StateNotifier<bool> {


NotificationPro() : super(false);


 void toggleValue() {
    state = !state; 
  }
  }

final notificationProvider = StateNotifierProvider<NotificationPro, bool>((ref) {
  return NotificationPro(); 
});
