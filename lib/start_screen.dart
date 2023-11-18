import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 250,
          color: Colors.amber,
        ),
        const SizedBox(height: 50),
        Text(
          "Learn Flutter the fun wasssssssy!",
          style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            label: const Text("Start Quiz")
        ),
      ],
    ));
  }
}
