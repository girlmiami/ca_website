import 'package:flutter/material.dart';

class CustomBlackButton extends StatelessWidget {
  final String text;
  final double width;

  const CustomBlackButton({
    Key key,
    this.text,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      shape: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.black,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}
