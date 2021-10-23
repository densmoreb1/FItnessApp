import 'package:flutter/material.dart';
import 'exercise.dart';

class PastWorkouts extends StatelessWidget {
  const PastWorkouts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
              child: Text('Recent Workouts',
                  style: TextStyle(fontSize: 30, height: 3),
                  textAlign: TextAlign.center)),
          Workout('Bench', 3, 4, 200),
          Workout('Overhead Press', 3, 6, 115)
        ]);
  }
}

// List<Widget> getList() {
//   List<Workout> list = [];
//   for (int i = 0; i < 10; i++){
//     list.add(Workout)
//   } 
//   return list;
//   ];
// }


