import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/bmi-card.dart';
import '../constants.dart';
import '../components/icon-content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'result.dart';
import '../components/bottom-button.dart';
import '../components/round-icon-button.dart';
//import 'package:wave_slider/wave_slider.dart';

enum Gender {
  male,
  female,
}
int height = 171;
int weight = 72;
int age = 22;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: kAppBarStyle,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BmiCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: BmiCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
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
                  child: BmiCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                            'HEIGHT',
                            style: kLabelTextStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Text(
                                height.toString(),
                                style: kNumberTextStyle,
                              ),
                              Text(
                                ' cm',
                                style: kLabelTextStyle,
                              )
                            ],
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Slider(
                              value: height.toDouble(),
                              activeColor: kBottomContainerColor,
                              inactiveColor: Color(0xFFFFFFFF),
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.round();
                                });
                              },
                              min: 100,
                              max: 300,
                            )
                            // WaveSlider(
                            //   color: kBottomContainerColor,
                            //   displayTrackball: false,
                            //   onChangeStart: (double value) {
                            //     setState(() {
                            //       height = ((value * 100) + 100).round();
                            //       print(value);
                            //     });
                            //   },
                            //   onChanged: (double value) {
                            //     setState(
                            //       () {
                            //         height = ((value * 100) + 100).round();
                            //         print(value);
                            //       },
                            //     );
                            //   },
                            // ),
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
                  child: BmiCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                onLongPress: () {
                                  setState(() {
                                    weight--;
                                    weight--;
                                    weight--;
                                    weight--;
                                    weight--;
                                  });
                                },
                              ),
                              RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  onLongPress: () {
                                    setState(() {
                                      weight++;
                                      weight++;
                                      weight++;
                                      weight++;
                                      weight++;
                                    });
                                  }),
                            ])
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: BmiCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                onLongPress: () {
                                  setState(() {
                                    age--;
                                    age--;
                                    age--;
                                    age--;
                                    age--;
                                  });
                                },
                              ),
                              RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  onLongPress: () {
                                    setState(() {
                                      age++;
                                      age++;
                                      age++;
                                      age++;
                                      age++;
                                    });
                                  }),
                            ])
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
