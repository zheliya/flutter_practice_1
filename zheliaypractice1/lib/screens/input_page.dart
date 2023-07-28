import 'package:flutter/material.dart';
import 'package:zheliaypractice1/componenets/bottom_button.dart';
import 'package:zheliaypractice1/componenets/constants.dart';
import 'package:zheliaypractice1/componenets/icon_content.dart';
import 'package:zheliaypractice1/componenets/reusable_card.dart';
import 'results_page.dart';
import 'package:zheliaypractice1/calculator_brain.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malekCardColor = kInkActivekCardColor;
  Color femalekCardColor = kInkActivekCardColor;
  Gender? selectedGender;
  int height = 180;
  int weight = 70;
  int age = 21;

/*   void updateColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (malekCardColor == kInkActivekCardColor ||
          femalekCardColor == kActivekCardColor) {
        malekCardColor = kActivekCardColor;
        femalekCardColor = kInkActivekCardColor;
      } else {
        malekCardColor = kInkActivekCardColor;
      }
    }
    if (selectedGender == Gender.female) {
      if (femalekCardColor == kInkActivekCardColor ||
          malekCardColor == kActivekCardColor) {
        femalekCardColor = kActivekCardColor;
        malekCardColor = kInkActivekCardColor;
      } else {
        femalekCardColor = kInkActivekCardColor;
      }
    }
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: ReusableCard(
                      colour: selectedGender == Gender.male
                          ? kActivekCardColor
                          : kInkActivekCardColor,
                      cardChild: const IconContent(
                          icon: Icons.male_rounded, label: 'Male'),
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                          /* updateColor(Gender.male); */
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: ReusableCard(
                      colour: selectedGender == Gender.female
                          ? kActivekCardColor
                          : kInkActivekCardColor,
                      cardChild: const IconContent(
                          icon: Icons.female_rounded, label: 'Female'),
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                          /* updateColor(Gender.male); */
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kActivekCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'HEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.ideographic,
                          children: [
                            Text(
                              height.toString(),
                              style: kNumberTextStyle,
                            ),
                            const Text('cm', style: kLabelTextStyle),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Colors.grey,
                            thumbColor: KMainPink,
                            thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 15.0),
                            overlayColor: KMainPinkOpake,
                            overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 30.0),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kActivekCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "weight",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: Icons.remove_rounded,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: Icons.add_rounded,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActivekCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Age",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: Icons.remove_rounded,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: Icons.add_rounded,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'Caluculate',
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height, weight);
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return  ResultsPage(
                    bmiResult: calc.getReslults(),
                    interpretation: calc.getInterpretation(),
                    resultText: calc.getReslults(),
                  );
                },
              ));
            },
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatefulWidget {
  final IconData icon;
  // ignore: prefer_typing_uninitialized_variables
  final Function() onPressed;
  const RoundIconButton(
      {super.key, required this.icon, required this.onPressed});

  @override
  State<RoundIconButton> createState() => _RoundIconButtonState();
}

class _RoundIconButtonState extends State<RoundIconButton> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: widget.onPressed,
      elevation: 0.0,
      constraints: const BoxConstraints(minWidth: 54.0, minHeight: 54.0),
      shape: const CircleBorder(),
      fillColor: kButtonColor,
      child: Icon(widget.icon),
    );
  }
}
