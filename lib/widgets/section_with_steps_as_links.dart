import 'package:ca_website/models/dataWithSteps.dart';
import 'package:ca_website/models/dataWithStepsAsLinks.dart';
import 'package:ca_website/widgets/section_title.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';

// ignore: must_be_immutable
class SectionWithStepsAsLinks extends StatelessWidget {
  final DataWithStepsAsLinks data;
  final Color color;

  SectionWithStepsAsLinks({
    Key key,
    this.data,
    this.color,
  }) : super(key: key);

  int index = 0;

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
            SectionTitle(
              title: data.title,
            ),
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
            ...data.steps.keys.toList().map<Widget>((key) {
              index++;
              return singleStep(key, index, data.steps[key]);
            }).toList(),
          ],
        ),
      ),
    );
  }

  singleStep(text, index, link) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Container(
        width: screenWidth / 1.5,
        child: GestureDetector(
          onTap: () => launch(link),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15,
              color: color,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
    );
  }
}
