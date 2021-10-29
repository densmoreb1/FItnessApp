import 'package:flutter/material.dart';
import 'enter.dart';

class FutureWorkoutCard extends StatelessWidget {
  final int sets;
  final int reps;
  final int weight;
  final String exercise;

  FutureWorkoutCard(this.reps, this.sets, this.weight, this.exercise);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context, builder: (BuildContext context) => Enter());
      },
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.black12),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('$exercise', style: TextStyle(fontSize: 17, height: 2)),
                  Icon(Icons.square_foot)
                ],
              ),
            ),
            Container(
              // color: Colors.amber,
              // padding: EdgeInsets.only(left: 45, right: 40),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('$sets sets ',
                          style: const TextStyle(fontSize: 17, height: 2)),
                      Text('$reps reps',
                          style: const TextStyle(fontSize: 17, height: 2))
                    ],
                  ),
                  Text('Prevoius weight: $weight lbs',
                      style: const TextStyle(fontSize: 17, height: 2)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
