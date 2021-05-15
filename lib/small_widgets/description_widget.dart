import 'package:flutter/material.dart';

import '../main.dart';

class DescriptionWidget extends StatelessWidget {
  final String text;

  const DescriptionWidget({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Container(
        width: screenWidth / 1.5,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
