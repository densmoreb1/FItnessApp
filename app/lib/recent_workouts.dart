import 'package:flutter/material.dart';
import 'past_workout_card.dart';

class RecentWorkouts extends StatelessWidget {
  const RecentWorkouts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> loop = [1, 2, 3, 4, 5, 6, 7, 8];
    return Container(
      color: Colors.blueGrey[200],
      child: ListView(children: [
        const SizedBox(
            child: Text('Recent Workouts',
                style: TextStyle(fontSize: 30, height: 3, color: Colors.black),
                textAlign: TextAlign.center)),
        for (var i in loop) PastWorkoutCard('Bench', 3, 4, 200, 'Tuesday'),
      ]),
    );
  }
}
