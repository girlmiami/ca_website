import 'package:ca_website/main.dart';
import 'package:flutter/material.dart';

class GetStatedSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: 150,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            Colors.yellow[800],
            Colors.yellow[700],
            Colors.yellow[600],
            Colors.yellow[400],
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              "100+ Startups Per Month Choose MyOnlineCA \n Are You Next Startup ? ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
            ),
            child: Center(
              child: Text(
                "GET STARTED",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
