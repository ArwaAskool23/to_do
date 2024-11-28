import 'package:flutter_riverpod/flutter_riverpod.dart';



class TaskState {
  final double exit;
  final double addBox;
  final double round;
  final double shadow;
  final bool check;
  TaskState({
    required this.exit,
    required this.addBox,
    required this.round,
    required this.shadow,
    required this.check
  });

  TaskState copyWith({
    double? exit,
    double? addBox,
    double? round,
    double? shadow,
    bool? check,

  }) {
    return TaskState(
      exit: exit ?? this.exit,
      addBox: addBox ?? this.addBox,
      round: round ?? this.round, 
      check: check ?? this.check, 
      shadow: shadow ?? this.shadow,

    );
  }
}


class AddTaskPro extends StateNotifier<TaskState> {


AddTaskPro() : super(TaskState(
          exit: 50,
          addBox: 0,
           round: 0, 
           check: false,
          shadow: 0,
        ));


  void setValue(bool event) {

    event = state.check;
    if(event == true){
      state = state.copyWith(
        exit: 440,
        addBox: 490,
        round: 40,
        shadow: 860
      );
    }else{
      state = state.copyWith(
        exit: 50,
        addBox: 0,
        round: 0,
        shadow: 0
      );
    }

  }

   void toggleValue() {
    state = state.copyWith(check: !state.check); 
  }
}


final counterProvider = StateNotifierProvider<AddTaskPro, TaskState>((ref) {
  return AddTaskPro(); 
});

