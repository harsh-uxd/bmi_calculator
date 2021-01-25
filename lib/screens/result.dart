import 'package:bmi_calculator/components/bottom-button.dart';
import 'package:flutter/material.dart';
import '../components/bmi-card.dart';
import '../constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.suggestionText,
  });
  final String bmiResult;
  final String resultText;
  final String suggestionText;

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
                      resultText,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMIResultStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Text(
                        suggestionText,
                        style: kResultSuggestionStyle,
                        textAlign: TextAlign.center,
                      ),
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
