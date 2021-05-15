import 'package:ca_website/main.dart';
import 'package:flutter/material.dart';

class ClientFeedback extends StatefulWidget {
  @override
  _ClientFeedbackState createState() => _ClientFeedbackState();
}

class _ClientFeedbackState extends State<ClientFeedback> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      color: Colors.grey[200],
      child: Column(
        children: [
          Container(
            width: screenWidth,
            height: 150,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: (screenWidth / 5) * 3,
                  child: Text(
                    "India’s top-class legal service provider company, trusted by more than 10000+ happy clients & 200+ social reviews",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Container(
                  width: 200,
                  height: 2,
                  color: Colors.red[700],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              singleItem(
                "Chirag Dhanani",
                "",
                "​Thank you so much for registering my business so easily. I compared couple of service provides and Myonlineca is found to be the most cost effective service provider for registration of businesses. Appreciate all your efforts!",
                "Web Developer",
                5,
              ),
              singleItem(
                "Chirag Dhanani",
                "",
                "​Thank you so much for registering my business so easily. I compared couple of service provides and Myonlineca is found to be the most cost effective service provider for registration of businesses. Appreciate all your efforts!",
                "Web Developer",
                5,
              ),
              singleItem(
                "Chirag Dhanani",
                "",
                "​Thank you so much for registering my business so easily. I compared couple of service provides and Myonlineca is found to be the most cost effective service provider for registration of businesses. Appreciate all your efforts!",
                "Web Developer",
                5,
              ),
            ],
          ),
        ],
      ),
    );
  }

  singleItem(name, imageUrl, feedback, occupation, rating) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8),
        width: screenWidth / 4.5,
        height: 400,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              feedback,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              occupation,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [1, 2, 3, 4, 5]
                  .map(
                    (e) => Icon(
                      Icons.star_rounded,
                      color: Colors.yellow[900],
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
