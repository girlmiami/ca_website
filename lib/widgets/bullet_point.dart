import 'package:flutter/material.dart';

import '../main.dart';

class BulletPoint extends StatelessWidget {
  final text;

  const BulletPoint({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: (screenWidth / 3.5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: CircleAvatar(
                radius: 2,
                backgroundColor: Colors.white,
              ),
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
