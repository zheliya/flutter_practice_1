import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0x0ff0a021),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
/*         scaffoldBackgroundColor: Colors.blueGrey[900],
        colorScheme: ColorScheme.fromSeed(
            primary: Color.fromARGB(255, 9, 31, 49),
            secondary: Colors.purple,
            seedColor: Colors.red,
            background: const Color.fromARGB(255, 1, 21, 37),
            onBackground: Colors.white
            ), */
      ),
      home: const InputPage(),
    );
  }
}












/* import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'quiz_brain.dart';
//import 'dart:ffi';
//import 'dart:async';

//import 'Question.dart';

QuizBrain quizBrain = QuizBrain();
void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  int questionNumber = 0;

/*   List<bool> answers = [false, true, true];
  List<String> questions = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.'
  ];
 */
  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getQuestionAnswer();
    setState(() {
      if (userPickedAnswer == correctAnswer) {
        scoreKeeper.add(const Icon(Icons.check, color: Colors.green));
      } else {
        scoreKeeper.add(const Icon(Icons.close, color: Colors.red));
      }
      quizBrain.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                checkAnswer(false);
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
} */

/* void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildTextButton(1, Colors.red),
              buildTextButton(2, Colors.blue),
              buildTextButton(3, Colors.yellow),
              buildTextButton(4, Colors.indigo),
              buildTextButton(5, Colors.teal),
              buildTextButton(6, Colors.purple),
              buildTextButton(7, Colors.green),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextButton(int soundNumber, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound('note$soundNumber.wav');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color, // Background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0), // <-- Radius
          ),
        ),
        child: const Text(
          '',
        ),
      ),
    );
  }

  Future<void> playSound(String soundAsset) async {
    final player = AudioPlayer();
    await player.play(AssetSource('sounds/$soundAsset'));
  }
} */

/* void main() => runApp(const MyApp(
  
));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int nDonuts = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        body: const SafeArea(
          child: Column(children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/diamond.png'),
            ),
            Text(
              'Diamond',
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: 'Pacifico',
                color: Color.fromARGB(255, 57, 88, 104),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Full Stack Developer',
              style: TextStyle(
                fontSize: 25.8,
                color: Color.fromARGB(255, 101, 138, 156),
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone_in_talk_rounded,
                      size: 27.0,
                      color: Color.fromARGB(255, 57, 88, 104),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '+964 751 028 2002',
                      style: TextStyle(
                        color: Color.fromARGB(255, 101, 138, 156),
                        fontFamily: 'SpaceMono',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      size: 27.0,
                      color: Color.fromARGB(255, 57, 88, 104),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'zheliyasalam@gmial.com',
                      style: TextStyle(
                        color: Color.fromARGB(255, 101, 138, 156),
                        fontFamily: 'SpaceMono',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            )
          
          ]),
        ),
      ),
    );
  }
}

 */
