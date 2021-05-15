import 'package:ca_website/widgets/custom_black_button.dart';

import '../main.dart';
import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  final String bigText;
  final String smallTextLine1;
  final String smallTextLine2;
  final bool showButton;

  const TopSection({
    Key key,
    this.bigText,
    this.smallTextLine1,
    this.smallTextLine2,
    this.showButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: 400,
      // color:Colors.lightGreen,
      decoration: BoxDecoration(
        // border: Border.all(),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          // stops: [0.1, 0.9],
          colors: [
            Colors.green[800],
            Colors.green[400],
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            bigText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            smallTextLine1,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            smallTextLine2,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10),
          showButton
              ? CustomBlackButton(text: "Get Proposal",width: 200,)
              : SizedBox(),
        ],
      ),
    );
  }
}
