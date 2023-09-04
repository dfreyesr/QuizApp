import 'package:flutter/material.dart';
import 'package:quiz_app/components/text.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        margin: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          color: data['correct_answer'] == data['user_answer']
                              ? const Color.fromARGB(255, 28, 92, 31)
                              : const Color.fromARGB(255, 147, 0, 0),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: TextComponent(
                            text: ((data['question_index'] as int) + 1)
                                .toString(),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            textColor: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            TextComponent(
                              text: data['question'].toString(),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextComponent(
                              text: data['user_answer'].toString(),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              textColor:
                                  const Color.fromARGB(208, 255, 255, 255),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextComponent(
                              text: data['correct_answer'].toString(),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              textColor:
                                  const Color.fromARGB(255, 235, 176, 249),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )
                    ]),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
