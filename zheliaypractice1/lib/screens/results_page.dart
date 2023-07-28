import 'package:flutter/material.dart';
import 'package:zheliaypractice1/componenets/bottom_button.dart';
import 'package:zheliaypractice1/componenets/constants.dart';
import 'package:zheliaypractice1/componenets/reusable_card.dart';

class ResultsPage extends StatelessWidget {
   final String bmiResult;
   final String resultText;
   final String interpretation;

  const ResultsPage({super.key, required this.bmiResult, required this.resultText, required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomCenter,
              child: const Text(
                'Your Results',
                style: kTitleTextStyle,
              ),
            ),
          ),
           Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActivekCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'Caluculate',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
