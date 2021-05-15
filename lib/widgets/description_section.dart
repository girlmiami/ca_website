import 'package:flutter/material.dart';

import '../main.dart';

class SectionDescription extends StatelessWidget {
  final String description;

  const SectionDescription({Key key, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth / 1.5,
      padding: const EdgeInsets.only(bottom: 20),
      child: Text(
        description,
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
      ),
    );
  }
}
