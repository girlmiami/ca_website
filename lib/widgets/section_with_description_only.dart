import 'package:ca_website/models/dataWithDescription.dart';
import 'package:ca_website/widgets/description_section.dart';
import 'package:ca_website/widgets/section_title.dart';
import 'package:flutter/cupertino.dart';

import '../main.dart';

class SectionWithDescriptionOnly extends StatelessWidget {
  final DataWithDescription data;

  const SectionWithDescriptionOnly({Key key, this.data}) : super(key: key);

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
          children: [
            SectionTitle(
              title: data.title,
            ),
            SectionDescription(
              description: data.description,
            ),
          ],
        ),
      ),
    );
  }
}
