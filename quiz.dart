import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import './start_screen.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Widget? active_screen;
  var active_screen = 'startScreen';

  // @override
  // void initState() {
  //   active_screen = StartScreen(switchpages);
  //   super.initState();
  // }

  void switchpages() {
    setState(() {
      active_screen = 'questionScreen';
    });
  }

  @override
  Widget build(BuildContext context) {
    // final screenWidget = active_screen == 'startScreen'
    //     ? StartScreen(switchpages)
    //     : const QuestionScreen();
    Widget screenwidget = StartScreen(switchpages);
    if (active_screen == 'questionScreen') {
      screenwidget = const QuestionScreen();
    }

    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 72, 28, 81),
          Color.fromARGB(255, 58, 21, 64),
        ])),
        child: screenwidget,
      ),
    ));
  }
}
