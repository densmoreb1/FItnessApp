import 'package:flutter/material.dart';
import 'workout_card.dart';

class PastWorkouts extends StatelessWidget {
  const PastWorkouts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> loop = [1, 2, 3, 4, 5, 6, 7, 8];
    return ListView(children: [
      const SizedBox(
          child: Text('Recent Workouts',
              style: TextStyle(fontSize: 30, height: 3),
              textAlign: TextAlign.center)),
      for (var i in loop) WorkoutCard('Bench', 3, 4, 200, 'Tuesday'),
    ]);
  }
}
