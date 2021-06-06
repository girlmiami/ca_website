import 'package:ca_website/models/subsection_dataWithDescription.dart';
import 'package:ca_website/small_widgets/subsection_title.dart';
import 'package:ca_website/widgets/description_section.dart';
import 'package:flutter/cupertino.dart';

import '../main.dart';

class SubsectionWithDescription extends StatefulWidget {
  final SubSectionDataWithDescription data;
  final index;

  const SubsectionWithDescription({Key key, this.data, this.index})
      : super(key: key);

  @override
  _SubsectionWithDescriptionState createState() =>
      _SubsectionWithDescriptionState();
}

class _SubsectionWithDescriptionState extends State<SubsectionWithDescription> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth / 1.5,
      child: Center(
        child: Column(
          children: [
            SubSectionTitle(
              title: widget.data.title,
              index: widget.index,
            ),
            SectionDescription(
              description: widget.data.description,
            ),
          ],
        ),
      ),
    );
  }
}
