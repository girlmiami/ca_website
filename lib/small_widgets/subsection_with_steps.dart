
import 'package:ca_website/models/subsection_dataWithSteps.dart';
import 'package:ca_website/small_widgets/description_widget.dart';
import 'package:ca_website/small_widgets/subsection_title.dart';
import 'package:flutter/material.dart';

import '../main.dart';

// ignore: must_be_immutable
class SubSectionWithSteps extends StatelessWidget {
  final SubSectionDataWithSteps data;
  final String indexString;

  SubSectionWithSteps({Key key, this.data,this.indexString}) : super(key: key);

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth / 1.5,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SubSectionTitle(
              title: data.title,
              index: indexString,
            ),
            data.subtitle == null
                ? SizedBox()
                : DescriptionWidget(
                    text: data.subtitle,
                  ),
            ...data.steps.toList().map<Widget>((key) {
              index++;
              return singleStep(key, index);
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
