import 'package:ca_website/main.dart';
import 'package:ca_website/private_company_registration/widgets/private_company_form.dart';
import 'package:ca_website/widgets/book_consultant_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookConsultancy extends StatefulWidget {
  final String title;
  final String subtitle;
  final String subtitle2;
  final String typeOfForm;

  const BookConsultancy({
    Key key,
    this.title,
    this.subtitle,
    this.subtitle2,
    this.typeOfForm,
  }) : super(key: key);

  @override
  _BookConsultancyState createState() => _BookConsultancyState();
}

class _BookConsultancyState extends State<BookConsultancy> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        // decoration: BoxDecoration(
        //   border: Border.all(),
        // ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            widget1(),
            widget2(),
            typeOfForm(),
            submitButton(),
          ],
        ),
      ),
    );
  }

  typeOfForm() {
    switch (widget.typeOfForm) {
      case "Private Company Registration":
        return PrivateCompanyForm();
      case "LLP Registration":
        return PrivateCompanyForm();
      default:
        return BookConsultantForm();
    }
  }

  submitButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        width: screenWidth / 3.8,
        child: Center(
          child: Text(
            "Submit",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        color: Colors.deepPurple,
      ),
    );
  }

  widget1() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(FontAwesomeIcons.calendarAlt),
          Text(
            widget.title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }

  widget2() {
    return Container(
      color: Colors.deepPurple,
      width: screenWidth / 3.8,
      height: 140,
      child: Container(
        width: (screenWidth / 3.8) - 30,
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              widget.subtitle,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              widget.subtitle2,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
