import 'package:ca_website/main.dart';
import 'package:flutter/material.dart';

class LegalRegistrationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      // color: Colors.green[400],
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
              "Legal Registration in 3 Steps",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            bulletPoints(
                "Choose our wide range of the service & fill-up your details."),
            bulletPoints(
                "Submit your business and personal details & make the payment via cards/netbanking/upi/digital wallets with secure payment gateway."),
            bulletPoints(
                "Got the instant email from our team member & send us the required documents via email as scanned copies or images. Be relax ! your work is done."),
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
              "Why Business Registration is Important ?",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            bulletPoints(
                "Current bank account on firm name + billing on firm name."),
            bulletPoints(
                "Build trust | Protect brand | protect from government non compliance notice"),
            bulletPoints("Funding or loans from banks or investors."),
            bulletPoints(
                "Protect personal liabilities | make agreements with vendors or suppliers or tie ups."),
            bulletPoints(
                "Apply for payment gateway, tenders or big projects | Issue certification to employees or interns."),
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
                backgroundColor: Colors.white,
              ),
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
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
