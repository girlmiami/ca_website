import '../widgets/book_consultancy.dart';
import '../widgets/client_feedback.dart';
import '../widgets/get_started_section.dart';
import '../widgets/legal_registration_section.dart';
import '../widgets/money_back_guartee_section.dart';
import '../widgets/top_section.dart';
import '../widgets/why_choose_us_section.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight - 100,
      child: ListView(
        children: [
          TopSection(
            bigText: "#1 Online Legal Registration Portal In India",
            smallTextLine1:
                "Register Your Company or Firm | GST registration anywhere in India & Secure your Business with Government Startup",
            smallTextLine2: "India Recognition Certified Company : DIPP9122",
            showButton: false,
          ),
          GetStatedSection(),
          ClientFeedback(),
          BookConsultancy(
            title: "Book Free Consultation Right Now",
            subtitle: "MyOnlineCA Smart Contact Form",
            subtitle2:
                "Choose Right Category so Our System will assign to you right team member in myonlineca office",
          ),
          LegalRegistrationSection(),
          WhyChooseUsSection(),
          MoneyBackGuarantee(),
        ],
      ),
    );
  }
}
