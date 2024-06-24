import 'package:quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions'
    ],
  ),
  QuizQuestion('How are Flutter UIs built?',[
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in a config files',
    'By using XCode for IOS and Android Studio for Android',
  ],
  ),
  QuizQuestion('What is the purpose of StatefulWidget?',[
    'Update UI as date changes',
    'Update data as UI changes',
    'Ignore data changes',
    'Render UI that does not depend on data',
  ],
  ),
  QuizQuestion('What happens if you change data in a StatelessWidget?',[
    'The UI is not update',
    'The UI is updated',
    'The closest StatefulWidget is updated',
    'Any nested StatefulWidgets are updated',
  ],
  )
];