import 'package:ca_website/main.dart';
import 'package:ca_website/models/registrationData.dart';
import 'package:flutter/material.dart';

import 'custom_black_button.dart';

class RegistrationFeesSection extends StatefulWidget {
  final data;

  const RegistrationFeesSection({Key key, this.data}) : super(key: key);

  @override
  _RegistrationFeesSectionState createState() =>
      _RegistrationFeesSectionState();
}

class _RegistrationFeesSectionState extends State<RegistrationFeesSection> {
  RegistrationFeesData registrationData;
  int indexInclude = 0;
  int indexFree = 0;

  @override
  void initState() {
    registrationData = RegistrationFeesData(
      registrationTitle: widget.data["title"],
      registrationSubtitle: widget.data["subtitle"],
      price: widget.data["price"],
      freePackage: widget.data["freePackage"],
      include: widget.data["include"],
      inclusiveString: widget.data["inclusiveString"],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          // stops: [0.1, 0.9],
          colors: [
            Colors.green[800],
            Colors.green[400],
          ],
        ),
      ),
      width: screenWidth / 1.5,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
              width: screenWidth / 1.5,
              child: Text(
                registrationData.registrationTitle,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: Text(
                registrationData.registrationSubtitle,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              "Pricing : " +
                  "${registrationData.price}/-" +
                  "(${registrationData.inclusiveString})",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Include : ",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
            ...registrationData.include.map<Widget>((item) {
              indexInclude++;
              return Text(
                "#$indexInclude " + item,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              );
            }).toList(),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Free with above package : ",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ...registrationData.freePackage.map<Widget>((item) {
              indexFree++;
              return Text(
                "#$indexFree " + item,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              );
            }).toList(),
            SizedBox(
              height: 20,
            ),
            CustomBlackButton(
              text: "Book Now",
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}
