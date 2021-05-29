import 'package:ca_website/main.dart';
import 'package:ca_website/models/question.dart';
import 'package:flutter/material.dart';

class QuestionList extends StatefulWidget {
  final List<Question> allQuestions;

  const QuestionList({Key key, this.allQuestions}) : super(key: key);

  @override
  _QuestionListState createState() => _QuestionListState();
}

class _QuestionListState extends State<QuestionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: widget.allQuestions.map<Widget>(
          (question) {
            return singleQuestion(question);
          },
        ).toList(),
      ),
    );
  }

  singleQuestion(Question question) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        width: screenWidth / 1.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question.question,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              question.answer,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
