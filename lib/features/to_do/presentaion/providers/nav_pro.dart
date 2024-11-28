import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavPro extends StateNotifier<bool> {


NavPro() : super(true);


 void switchToHome() {
    state = true; 
  }

  void switchToTask() {
    state = false; 
  }
  }

final navProvider = StateNotifierProvider<NavPro, bool>((ref) {
  return NavPro(); 
});
