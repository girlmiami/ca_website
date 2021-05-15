import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      width: screenWidth / 1.5,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
