import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  StartScreen(this.startquiz, {super.key});

  final void Function() startquiz;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/quiz-logo.png', height: 350),
          SizedBox(height: 20),
          Text(
            'Learn Flutter the fun way!',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
                side: BorderSide(
              color: Colors.blue,
            )),
            icon: Icon(Icons.arrow_right_outlined),
            onPressed: startquiz,
            label: Text(
              'Start quiz',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
