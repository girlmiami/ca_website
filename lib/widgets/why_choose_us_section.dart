import 'package:flutter/material.dart';

import '../main.dart';

class WhyChooseUsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [firstColumn(), secondColumn()],
        ),
      ),
    );
  }

  firstColumn() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: (screenWidth / 3.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Why Choose MyOnlineCA ?",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            bulletPoints(
                "India’s leading startup’s legal service provider company."),
            bulletPoints("Lowest pricing through automation and technology."),
            bulletPoints(
                "Startup friendly team which gives you service beyond satisfaction."),
            bulletPoints("Superb packages which you can’t find anywhere."),
            bulletPoints("After Service Lifetime support as premium client."),
            bulletPoints("100% Money back guarantee on Professional Fee."),
            bulletPoints("Confidential documents policy during the process."),
            bulletPoints("Highest credibility reviews on social media"),
          ],
        ),
      ),
    );
  }

  secondColumn() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: (screenWidth / 3.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "MyOnlineCA MileStone’s",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            bulletPoints("5000+ Companies or Firm has been registered."),
            bulletPoints("India’s top 5000 website in terms of traffic"),
            bulletPoints(
                "India’s leading Youtube Business Guide Channel over 1 lakh+ Subscriber"),
          ],
        ),
      ),
    );
  }

  bulletPoints(text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: (screenWidth / 3.5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: CircleAvatar(
                radius: 2,
                backgroundColor: Colors.grey,
              ),
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
