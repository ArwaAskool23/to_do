import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DoneTaskePor extends StateNotifier<bool> {


DoneTaskePor() : super(false);


 void toggleValue() {
    state = !state; 
  }
  }

final checkProvider = StateNotifierProvider<DoneTaskePor, bool>((ref) {
  return DoneTaskePor(); 
});
