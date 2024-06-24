import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment:CrossAxisAlignment.start,

                children: [
                  Container(
                    width: 40,
                    decoration:  BoxDecoration(
                        shape: BoxShape.circle, color: data['index_color']as Color),
                    child: Text((data['question_index'].toString()), textAlign: TextAlign.center,),
                    
                    
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                    
                      children: [
                        Text(data['question'] as String, style:const TextStyle(color: Colors.white,fontSize: 15)),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(data['user_answer'] as String, style:const TextStyle(color: Colors.white,fontSize: 15)),
                        Text(data['correct_answer'] as String,style:const TextStyle(color: Color.fromARGB(255, 22, 150, 66),fontSize: 15)),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
