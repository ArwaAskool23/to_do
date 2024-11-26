import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChooseCategoryPro extends StateNotifier<bool> {


ChooseCategoryPro() : super(false);


 void toggleValue() {
    state = !state; 
  }
  }

final chooseCategoryProvider = StateNotifierProvider<ChooseCategoryPro, bool>((ref) {
  return ChooseCategoryPro(); 
});
