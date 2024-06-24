import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.reQz,
  });

  final List<String> chosenAnswers;
  final void Function() reQz;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];
    final List<Color> IndexColor=[];

    for (var i = 0; i < chosenAnswers.length; i++) {
      if(chosenAnswers[i]==questions[i].answers[0]){
        IndexColor.add(Colors.green);
      }
      else{
        IndexColor.add(Colors.red);
      }
      summary.add(
        {
          'question_index': i + 1,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
          'index_color': IndexColor[i],
          
        },
      );
    }
    return summary;
  }


  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData.where((data)=> data['user_answer'] == data['correct_answer'],
    ).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'You answered $numCorrectAnswers out of $numTotalQuestions questions correctly!',style:const TextStyle(color: Color.fromARGB(255, 250, 250, 250),fontSize: 18),
                textAlign: TextAlign.center,
                ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black,foregroundColor:Colors.white),
              onPressed: reQz,
              icon: const Icon(Icons.replay),
              label: const Text('Restart Quiz'),
              
              
            )
          ],
        ),
      ),
    );
  }
}