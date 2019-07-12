import 'package:bmi/components/bottom_button.dart';
import 'package:bmi/constants.dart';
import 'package:bmi/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {


  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage({@required this.bmiResult,@required this.resultText,@required this.interpretation});

  @override
  Widget build(BuildContext context) {


    final Map<String,String> args=ModalRoute.of(context).settings.arguments;
    final String bmi=args['bmi'];
    final String result = args['result'];
    final String interpretation = args['interpretation'];

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "YOUR RESULT",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(result,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmi,
                    style: kBMITextStyle,
                  ),
                  Text(interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: "RE-CALCULATE",
            onTap: (){

              Navigator.pop(context);
            },
          ),

        ],
      ),
    );
  }
}
