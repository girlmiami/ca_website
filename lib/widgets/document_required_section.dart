import 'package:ca_website/small_widgets/description_widget.dart';
import 'package:ca_website/widgets/section_title.dart';
import 'package:flutter/material.dart';

import '../main.dart';

// ignore: must_be_immutable
class DocumentRequiredSection extends StatelessWidget {
  final data;

  DocumentRequiredSection({Key key, this.data}) : super(key: key);

  int index = 0;
  List<String> points = [];
  bool _isInit = true;

  initialize() {
    if (_isInit) {
      data["points"].forEach((p) {
        points.add(p);
      });
      _isInit = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    initialize();
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      width: screenWidth / 1.5,
      child: Column(
        children: [
          SectionTitle(
            title:
                "Documents required for Private Limited Company Registration",
          ),
          data["description"] == ""
              ? SizedBox()
              : DescriptionWidget(
                  text: data["description"],
                ),
          pointsWidget(),
          data["description2"] == ""
              ? SizedBox()
              : DescriptionWidget(
                  text: data["description2"],
                ),
        ],
      ),
    );
  }

  Widget pointsWidget() {
    int idx = 0;
    return Column(
      children: points.map<Widget>((point) {
        idx++;
        return Padding(
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          child: Container(
            width: screenWidth / 1.5,
            child: Text(
              "#$idx " + point,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
