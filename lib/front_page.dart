import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FrontPage extends StatelessWidget {
  const FrontPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(),
            Image.asset(
              'assets/images/logo.png',
              width: 400,
            ),
            Text(
              'Are you ready for the Googlies ??',
              style: GoogleFonts.caveat(
                color: const Color.fromARGB(255, 4, 2, 85),
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                'Start Googly',
              ),
            ),
            const Spacer(),
             Text(
                'Created with 🤍 by Dipmay',
                style: GoogleFonts.caveat(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
          ],
        ),
      ),
      
    );
  }
}
