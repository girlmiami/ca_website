import 'package:ca_website/models/howToItem.dart';
import 'package:ca_website/reusable/private_company_data.dart';
import 'package:ca_website/widgets/section_title.dart';
import 'package:ca_website/widgets/single_how_to_item.dart';
import 'package:flutter/material.dart';
import '../main.dart';

// ignore: must_be_immutable
class HowToSection extends StatelessWidget {
  final data;

  HowToSection({Key key, this.data}) : super(key: key);

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
            title: "How to Register a Pvt Ltd Company in India",
          ),
          ...data.map<Widget>(
            (data) {
              List<String> points = [];
              data["points"].forEach((p) {
                points.add(p);
              });
              // print(points.runtimeType);
              index++;
              return Padding(
                padding: EdgeInsets.only(
                  top: index == 1 ? 0.0 : 20.0,
                ),
                child: SingleHowToItemWidget(
                  index: index,
                  item: HowToItem(
                    title: data["title"],
                    points: points,
                    description: data["description"],
                    note: data["note"],
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
