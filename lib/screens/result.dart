import 'package:bmi_calculator/components/bottom-button.dart';
import 'package:flutter/material.dart';
import '../components/bmi-card.dart';
import '../constants.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text(
            'YOUR RESULT',
            style: kAppBarStyle,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: BmiCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'NORMAL',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '24.2',
                      style: kBMIResultStyle,
                    ),
                    Text(
                      'Your BMI is GREAT! Keep up with the health lifestyle.',
                      style: kResultSuggestionStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE',
            )
          ],
        ));
  }
}
