import 'package:ca_website/models/singleAdvantage.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class SingleAdvantageWidget extends StatelessWidget {
  final SingleAdvantage data;

  const SingleAdvantageWidget({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth / 1.5,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: data.head + " : ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: data.body,
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
