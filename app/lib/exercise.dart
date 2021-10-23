import 'package:flutter/material.dart';

class Workout extends StatelessWidget {
  final String exercise_name;
  final int sets;
  final int reps;
  final int weight;

  Workout(this.exercise_name, this.sets, this.reps, this.weight);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            exercise_name,
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          Text(
            'sets: ${sets}',
            style: const TextStyle(fontSize: 17, height: 2),
          ),
          Text(
            'reps: ${reps}',
            style: const TextStyle(fontSize: 17, height: 2),
          ),
          Text(
            'weight: ${weight}',
            style: const TextStyle(fontSize: 17, height: 2),
          ),
        ],
      ),
    );
  }
}
