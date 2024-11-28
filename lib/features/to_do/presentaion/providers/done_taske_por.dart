import 'package:flutter_riverpod/flutter_riverpod.dart';

class DoneTaskePor extends StateNotifier<List<List<bool>>> {


DoneTaskePor() : super(List.generate(3, (index) => List.generate(4, (index) => false)));


 void toggleValue(int indexDay, int indexTask) {
    state[indexDay][indexTask] = !state[indexDay][indexTask]; 
  }
  }

final checkProvider = StateNotifierProvider<DoneTaskePor, List<List<bool>>>((ref) {
  return DoneTaskePor(); 
});
