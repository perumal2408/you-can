import 'package:flutter/material.dart';
import 'package:you_can_habit_tracker/widgets/calendar_home_widget.dart';
import 'package:you_can_habit_tracker/widgets/day_count_widget.dart';
import 'package:you_can_habit_tracker/widgets/habbit_card_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 49, 49, 49)),
      home: const MyHomePage(title: 'YOU CAN!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 49, 49, 49),
        title: Text(
          widget.title,
          style: const TextStyle(color: Color.fromARGB(255, 230, 230, 230)),
        ),
      ),
      body: const Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DayCount(),
          Expanded(child: habbit_card(),),
          calendar_widget()
        ],
      ),
    );
  }
}
