import 'package:ca_website/models/faqItem.dart';
import 'package:ca_website/widgets/section_title.dart';
import 'package:ca_website/widgets/single_faq_question.dart';
import 'package:flutter/cupertino.dart';

import '../main.dart';

// ignore: must_be_immutable
class FaqSection extends StatelessWidget {
  final String title;
  final data;

  FaqSection({Key key, this.title, this.data}) : super(key: key);

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
          ...data.map<Widget>(
            (faq) {
              List<String> points = [];
              faq["points"].forEach((p) {
                points.add(p);
              });
              // print(points.runtimeType);
              index++;
              return Padding(
                padding: EdgeInsets.only(
                  top: index == 1 ? 0.0 : 20.0,
                ),
                child: SingleFAQQuestion(
                  index: index,
                  item: FaqItem(
                    question: faq["question"],
                    answer: faq["answer"],
                    points: points,
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
