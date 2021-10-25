import 'package:flutter/material.dart';

class WorkoutCard extends StatelessWidget {
  final String exercise_name;
  final int sets;
  final int reps;
  final int weight;
  final String date;

  WorkoutCard(this.exercise_name, this.sets, this.reps, this.weight, this.date);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(color: Colors.grey[300]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              date,
              style: const TextStyle(
                  fontSize: 18, decoration: TextDecoration.underline),
              textAlign: TextAlign.right,
            ),
            Text(
              exercise_name,
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            Text(
              'Sets: ${sets}',
              style: const TextStyle(fontSize: 17, height: 2),
            ),
            Text(
              'Reps: ${reps}',
              style: const TextStyle(fontSize: 17, height: 2),
            ),
            Text(
              'Weight: ${weight} lbs',
              style: const TextStyle(fontSize: 17, height: 2),
            ),
          ],
        ),
      ),
    );
  }
}
