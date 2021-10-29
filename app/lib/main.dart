import 'package:flutter/material.dart';
import 'recent_workouts.dart';
import 'enter_workout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Strong',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Strong'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        bottom: false,
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
              body: TabBarView(
                children: [
                  const RecentWorkouts(),
                  const EnterWorkout(),
                  Container(color: Colors.blue),
                ],
              ),
              appBar: const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    icon: Icon(Icons.fitness_center),
                  ),
                  Tab(
                    icon: Icon(Icons.settings),
                  )
                ],
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(5.0),
                indicatorColor: Colors.black,
              ),
              backgroundColor: Colors.white),
        ),
      ),
    );
  }
}
