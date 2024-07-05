import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class FrontPage extends StatelessWidget {
  final void Function() startQuiz;

  FrontPage(this.startQuiz, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(),
            SizedBox(
              child: Lottie.asset('assets/logoAnimation.json', repeat: true, reverse: true),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Are you ready for the Googlies ??',
                    style: GoogleFonts.aDLaMDisplay(
                      color: Color.fromARGB(255, 238, 255, 0),
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ),
            const SizedBox(height: 50),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                // ignore: deprecated_member_use
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Googly'),
            ),
            const Spacer(),
            Text(
              'Created with 🤍 by Dipmay',
              style: GoogleFonts.kalam(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}