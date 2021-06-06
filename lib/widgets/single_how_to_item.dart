import 'package:ca_website/models/howToItem.dart';
import 'package:ca_website/small_widgets/description_widget.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class SingleHowToItemWidget extends StatelessWidget {
  final HowToItem item;
  final int index;

  const SingleHowToItemWidget({
    Key key,
    this.item,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth / 1.5,
      child: Column(
        children: [
          title(item.title),
          DescriptionWidget(text: item.description),
          item.points == null || item.points.length == 0
              ? SizedBox()
              : points(item.points),
          item.note == "" || item.note == null
              ? SizedBox()
              : DescriptionWidget(
                  text: item.note,
                ),
        ],
      ),
    );
  }

  title(text) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Container(
        width: screenWidth / 1.5,
        child: Text(
          "Step $index. " + text,
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  points(points) {
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
