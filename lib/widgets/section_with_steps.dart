import 'package:ca_website/models/dataWithSteps.dart';
import 'package:ca_website/small_widgets/description_widget.dart';
import 'package:ca_website/widgets/section_title.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'custom_black_button.dart';

// ignore: must_be_immutable
class SectionWithSteps extends StatelessWidget {
  final DataWithSteps data;
  final bool showBackgroundColor;
  final bool showButton;

  SectionWithSteps(
      {Key key, this.data, this.showBackgroundColor, this.showButton})
      : super(key: key);

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        gradient: showBackgroundColor
            ? LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                // stops: [0.1, 0.9],
                colors: [
                  Colors.green[800],
                  Colors.green[400],
                ],
              )
            : null,
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
                : DescriptionWidget(
                    text: data.subtitle,
                  ),
            ...data.steps.keys.toList().map<Widget>((key) {
              index++;
              return singleStepWithSmallSteps(key, index, data.steps[key]);
            }).toList(),
            data.subtitle2 == null
                ? SizedBox()
                : DescriptionWidget(
                    text: data.subtitle2,
                  ),
            showButton
                ? Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: CustomBlackButton(
                      text: "Book Now",
                      width: 200,
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }

  singleStep(text, index) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Container(
        width: screenWidth / 1.5,
        child: Text(
          "#$index " + text,
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  singleStepWithSmallSteps(text, index, List<String> smallSteps) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          child: Container(
            width: screenWidth / 1.5,
            child: Text(
              "#$index " + text,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
        ),
        ...smallSteps
            .map(
              (e) => Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Container(
                  width: screenWidth / 1.5,
                  child: Text(
                    "- " + e,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ],
    );
  }
}
