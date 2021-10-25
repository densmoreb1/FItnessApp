class Exercises {
  final int exercise_id;
  final String exercise_name;
  final String description;

  Exercises(
      {required this.exercise_id,
      required this.exercise_name,
      required this.description});

  // Convert a Dog into a Map. The keys must correspond to the names of the
  // columns in the database.
  Map<String, dynamic> toMap() {
    return {
      'id': exercise_id,
      'exercise name': exercise_name,
      'description': description,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'Exercise{id: $exercise_id, name: $exercise_name, age: $description}';
  }
}
