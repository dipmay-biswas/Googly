import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class FrontPage extends StatelessWidget {
  const FrontPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(),
            SizedBox(
              height: 100,
              width: 100,
              child: Lottie.asset('assets/logoAnimation.json' ),
            ),
            const SizedBox(height: 50),
            Text(
              'Are you ready for the Googlies ??',
              style: GoogleFonts.caveat(
                color: const Color(0xFF040255),
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Googly'),
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
