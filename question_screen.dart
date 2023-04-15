import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 48, 42, 84),
      body: Container(
        child: SizedBox(
          width: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('This is the question!!!'),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {}, child: Text('option -1')),
            ElevatedButton(onPressed: () {}, child: Text('option -1')),
            ElevatedButton(onPressed: () {}, child: Text('option -1')),
          ]),
        ),
      ),
    );
  }
}
