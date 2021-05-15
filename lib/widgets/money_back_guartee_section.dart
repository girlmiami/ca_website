import 'package:ca_website/main.dart';
import 'package:flutter/material.dart';

class MoneyBackGuarantee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: screenWidth,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.deepPurple,
            ),
            Container(
              width: screenWidth / 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom:20.0),
                    child: Text(
                      "100% Money Back Guarantee*",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  Text(
                    "Our client’s satisfaction is our #1 priority! That’s why each person who’s avail service with myonlineca is completely protected by our 100% Money Back Guarantee Program*.Simply try our services and if myonlineca not provides you final legal approved certification’s, Just Checkout our Refund Policy Section.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
