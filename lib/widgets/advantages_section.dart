import 'package:ca_website/models/singleAdvantage.dart';
import 'package:ca_website/small_widgets/description_widget.dart';
import 'package:ca_website/widgets/section_title.dart';
import 'package:ca_website/widgets/single_advantage_widget.dart';
import 'package:flutter/material.dart';

import '../main.dart';

// ignore: must_be_immutable
class AdvantagesSection extends StatelessWidget {
  final String title;
  final String subtitle;
  final data;

  AdvantagesSection({
    Key key,
    this.title,
    this.data,
    this.subtitle,
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
      child: Column(
        children: [
          SectionTitle(
            title: title,
          ),
          subtitle == null
              ? SizedBox()
              : DescriptionWidget(
                  text: subtitle,
                ),
          ...data.map<Widget>(
            (advantage) {
              index++;
              return Padding(
                padding: EdgeInsets.only(
                  top: index == 1 ? 0.0 : 20.0,
                ),
                child: SingleAdvantageWidget(
                  data: SingleAdvantage(
                    head: advantage["head"],
                    body: advantage["body"],
                  ),
                ),
              );
            },
          ).toList(),
        ],
      ),
    );
  }
}
