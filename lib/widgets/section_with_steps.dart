import 'package:ca_website/models/dataWithSteps.dart';
import 'package:ca_website/small_widgets/description_widget.dart';
import 'package:ca_website/widgets/section_title.dart';
import 'package:flutter/material.dart';

import '../main.dart';

// ignore: must_be_immutable
class SectionWithSteps extends StatelessWidget {
  final DataWithSteps data;

  SectionWithSteps({Key key, this.data}) : super(key: key);

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
                : DescriptionWidget(
                    text: data.subtitle,
                  ),
            ...data.steps.map<Widget>((step) {
              index++;
              return singleStep(step, index);
            }).toList(),
            data.subtitle2 == null
                ? SizedBox()
                : DescriptionWidget(
                    text: data.subtitle2,
                  ),
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
}
