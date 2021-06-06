import 'package:flutter/material.dart';

import '../main.dart';

class SubSectionTitle extends StatelessWidget {
  final String title;
  final String index;

  const SubSectionTitle({
    Key key,
    this.title,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10, top: 10.0),
      width: screenWidth / 1.5,
      child: Text(
        "$index" + title,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
