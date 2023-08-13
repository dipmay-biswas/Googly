import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/question_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});
  final Map<String, Object> itemData;
  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          itemData['question_index'] as int,
          isCorrectAnswer,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              itemData['question'] as String,
              style: GoogleFonts.caveat(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              itemData['user_answer'] as String,
              style: const TextStyle(
                color: Color.fromARGB(255, 73, 0, 34),
                fontSize: 14,
              ),
            ),
            Text(
              itemData['correct_answer'] as String,
              style: const TextStyle(
                color: Color.fromARGB(255, 4, 2, 85),
                fontSize: 14,
              ),
            ),
          ],
        ))
      ],
    );
  }
}
