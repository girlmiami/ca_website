import 'package:ca_website/models/faqItem.dart';
import 'package:ca_website/small_widgets/description_widget.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class SingleFAQQuestion extends StatelessWidget {
  final FaqItem item;
  final int index;

  const SingleFAQQuestion({Key key, this.item, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth / 1.5,
      child: Column(
        children: [
          question(item.question),
          item.answer == "" ? SizedBox() : DescriptionWidget(text: item.answer),
          item.points == null || item.points.length == 0
              ? SizedBox()
              : points(item.points),
        ],
      ),
    );
  }

  points(points) {
    return Column(
      children: points
          .map<Widget>((point) => Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Container(
                  width: screenWidth / 1.5,
                  child: Text(
                    "- " + point,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }

  question(text) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Container(
        width: screenWidth / 1.5,
        child: Text(
          "#$index " + text,
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
