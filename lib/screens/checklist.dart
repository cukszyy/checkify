import 'package:flutter/material.dart';
import 'package:checkify/utilities/constants.dart';
import 'package:checkify/utilities/checklist/arrow_icons.dart';
import 'package:checkify/utilities/checklist/line.dart';
import 'package:checkify/utilities/checklist/question.dart';

class ChecklistScreen extends StatefulWidget {
  @override
  _ChecklistScreenState createState() => _ChecklistScreenState();
}

class _ChecklistScreenState extends State<ChecklistScreen> {
  int pageNumber = 1;

  @override
  Widget build(BuildContext context) {
    Widget page;

    if (pageNumber == 1) {
      page = Question(
        key: Key('q1'),
        onOptionSelected: () => setState(() => pageNumber = 2),
        question: 'How would you rate our services?',
        answers: <String>[
          'Very unsatisfied',
          'Neutral',
          'Very satisfied',
        ],
        number: 1,
      );
    } else if (pageNumber == 2) {
      page = Question(
        key: Key('q2'),
        onOptionSelected: () => setState(() => pageNumber = 3),
        question: 'This app has a friendly user interface',
        answers: <String>[
          'Strongly disagree',
          'Disagree',
          'Neutral',
          'Agree',
          'Strongly agree'
        ],
        number: 2,
      );
    } else {
      page = Question(
        key: Key('q3'),
        onOptionSelected: () => setState(() => pageNumber = 1),
        question: 'How often do you use checklist apps?',
        answers: <String>['Never', 'Rarely', 'Sometimes', 'Often', 'Always'],
        number: 3,
      );
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: backgroundDecoration,
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              ArrowIcons(),
              Line(),
              Positioned.fill(
                left: 53.5,
                child: AnimatedSwitcher(
                  child: page,
                  duration: Duration(milliseconds: 250),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
