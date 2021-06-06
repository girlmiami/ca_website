import 'package:ca_website/models/dataWithDescription.dart';
import 'package:ca_website/models/dataWithSteps.dart';
import 'package:ca_website/reusable/partnership_registration_data.dart';
import 'package:ca_website/widgets/book_consultancy.dart';
import 'package:ca_website/widgets/how_to_section.dart';
import 'package:ca_website/widgets/registration_fees.dart';
import 'package:ca_website/widgets/section_with_description_only.dart';
import 'package:ca_website/widgets/section_with_steps.dart';
import 'package:ca_website/widgets/top_section.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class PartnershipRegistrationMainPage extends StatefulWidget {
  const PartnershipRegistrationMainPage({Key key}) : super(key: key);

  @override
  _PartnershipRegistrationMainPageState createState() =>
      _PartnershipRegistrationMainPageState();
}

class _PartnershipRegistrationMainPageState
    extends State<PartnershipRegistrationMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight - 100,
      child: ListView(
        children: [
          TopSection(
            bigText: "Partnership Firm Registration",
            smallTextLine1:
                "#1 Portal to get done registration of partnership firm at Cheapest Cost with simple 3 Steps. Package Start Only From 2499/- INR​",
            smallTextLine2: "",
            showButton: true,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "What is Partnership Registration ?",
              subtitle:
                  "Partnership Firm is the most popular forms of business entity in India for the Partners Entrepreneurs. it needs just only 2 Person to Start a Business.\n\nThere are 3 Important Factors under partnership firm registration –",
              steps: {
                "Partnership Deed on Stamp Paper with Notarised": [],
                "PAN & TAN of the Partnership": [],
                "Registration under other act like MSME Act 2006.": [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          RegistrationFeesSection(
            data: PartnershipRegistrationData.registrationFees,
          ),
          RegistrationFeesSection(
            data: PartnershipRegistrationData.registrationFees2,
          ),
          BookConsultancy(
            title: "Book Free Consultation Right Now",
            subtitle: "Partnership Firm Registration Form",
            subtitle2: "100% Govt Certified with 50k+ Partnership Firm's",
            typeOfForm: "Gst Registration",
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Partnership firm process and procedure",
              steps: {
                "Just Fill-Up Simplified Partnership Application Form Here": [],
                "Make the payment online as per the package choose via cards/netbanking/UPI/Wallet in secure way.":
                    [],
                "Assign a dedicated legal expert & submit the docs via email or whatsapp. Be Relax your partnership firm deed drafting, PAN & TAN all things get done online without going anywhere.":
                    [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Documents required for partnership firm",
              steps: {
                "ID and Address Proof of Partners like Pan Card/Passport/Voter ID/Aadhar Card/Driving License Copy of the Partners.":
                    [],
                "One Business Place Address proof :-": [
                  "if Property on Rented :- Need Rent Agreement and NOC from Landlord.",
                  "if Property is own :- Need Electricity Bills or any other Address Proof.",
                ],
              },
              subtitle2: "Note : Business place and home place can be same.​",
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "Online registration of partnership firm is Possible :",
              description:
                  "Yes Its possible these can be done online with the help of MyOnlineCA at the cheapest cost. Below are the steps why we simplified the govt official legal process regarding the partnership firm registration –",
            ),
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Steps Taken to Register a Partnership Firm",
              steps: {
                "First Choose Partnership Firm Name.": [],
                "Fillup Application form with the business and personal details.":
                    [],
                "Create Partnership Agreement or Deed with the help of MyOnlineCA Professionals.":
                    [],
                "Take Printout of the deed on stamp & sign by all the partners with notarization.":
                    [],
                "Email us your Deed Scanned Copy and Apply for the PAN & TAN.":
                    [],
                "Get PAN & TAN Acknowledgement via Email from us.": [],
                "In next few days you will get the partnership firm pan card physical copy from the department.":
                    [],
                "Apply for the MSME Registration with the help of MyOnlineCA Professionals.":
                    [],
                "Get MSME Certificate and other legal agreements on your email with a complete package from us.":
                    [],
                "Just open a current bank account on the basis of Deed & PAN +TAN+MSME and start your business.":
                    [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Features of partnership Firm –",
              steps: {
                "2 Person Required as Partners.": [],
                "Partners share responsibilities and duties of the business.":
                    [],
                "More capital can be brought into the business.": [],
              },
              subtitle2:
                  "for the more benefits you can checkout here about benefits of partnership firm.\nCheck here disadvantages of the partnership firm",
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          HowToSection(
            data: PartnershipRegistrationData.howToData,
          ),
        ],
      ),
    );
  }
}
