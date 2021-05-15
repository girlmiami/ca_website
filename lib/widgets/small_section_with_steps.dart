import 'package:ca_website/models/dataWithSteps.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class SmallSectionWithSteps extends StatelessWidget {
  final DataWithSteps data;

  const SmallSectionWithSteps({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      width: screenWidth / 1.5,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            data.subtitle == null
                ? SizedBox()
                : Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                    child: Text(
                      data.subtitle,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
            ...data.steps.map<Widget>((step) {
              return singleStep(step);
            }).toList(),
          ],
        ),
      ),
    );
  }

  singleStep(text) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Container(
        width: screenWidth / 1.5,
        child: Text(
          "- " + text,
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
