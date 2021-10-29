import 'package:flutter/material.dart';
import 'future_workout_card.dart';

class EnterWorkout extends StatelessWidget {
  const EnterWorkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> loop = [1, 2];
    return Container(
      // color: Colors.blueGrey[200],
      child: ListView(children: [
        for (var i in loop) FutureWorkoutCard(3, 4, 135, 'Squat'),
      ]),
    );
  }
}
