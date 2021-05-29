import 'package:flutter/material.dart';

import '../../models/dataWithDescription.dart';
import '../../models/dataWithSteps.dart';
import '../../models/dataWithStepsAsLinks.dart';
import '../../models/question.dart';
import '../../reusable/private_company_data.dart';
import '../../widgets/book_consultancy.dart';
import '../../widgets/cost_involved_section.dart';
import '../../widgets/document_required_section.dart';
import '../../widgets/faq_section.dart';
import '../../widgets/how_to_section.dart';
import '../../widgets/questions_list.dart';
import '../../widgets/registration_fees.dart';
import '../../widgets/section_with_description_only.dart';
import '../../widgets/section_with_steps.dart';
import '../../widgets/section_with_steps_as_links.dart';
import '../../widgets/top_section.dart';
import '../../main.dart';

class PrivateCompanyMainPage extends StatefulWidget {
  @override
  _PrivateCompanyMainPageState createState() => _PrivateCompanyMainPageState();
}

class _PrivateCompanyMainPageState extends State<PrivateCompanyMainPage> {
  List<Question> allQues = [];

  @override
  void initState() {
    PrivateCompanyData.privateRegistrationQuestionsMap.keys
        .toList()
        .forEach((key) {
      allQues.add(Question(
        question: key,
        answer: PrivateCompanyData.privateRegistrationQuestionsMap[key],
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight - 100,
      child: ListView(
        children: [
          TopSection(
            bigText:
                "Private Limited Company Registration in \nIndia : Start Pvt Ltd Company",
            smallTextLine1:
                "Private Limited Company Registration by 100% Govt Certified Portal",
            smallTextLine2:
                "Just Fill-Up Below Details and Get Started Your Pvt Ltd Company Registration in Seconds with FREE Consultancy !",
            showButton: true,
          ),
          QuestionList(
            allQuestions: allQues,
          ),
          RegistrationFeesSection(
            data: PrivateCompanyData.privateRegistrationFees,
          ),
          BookConsultancy(
            title: "Book Now for Pvt Ltd Company Registration in India",
            subtitle: "Company Registration in India",
            subtitle2: "100% Govt Certified Platform with 1 lakh+companies",
            typeOfForm: "Private Company Registration",
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "Pvt Ltd Company Registration Online",
              description:
                  "Pvt Ltd Company Registration Online is possible through official MCA Govt Website but the problem i.e you can’t do it your self the pvt ltd company registration. Because its required the additional digital signature Attestation from a Practicing Chartered Accountant or Company Secretary or Lawyer etc. So It’s mean you have to hire a Good CA to get done your Private Limited Company Registration in India anywhere.",
            ),
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Private Limited Company Registration Process",
              subtitle:
                  "Simple 5 Steps Process to Register Your Private Limited Company in India",
              steps: {
                "Apply for the Digital Signature Certificate (DSC) for all the Person who’s are will be director in the Private Limited Company.": [],
                "Apply for the DIN Registration for all the Person who’s will be director in the Pvt Ltd Company.": [],
                "Now Just check about the Private Limited Company Name availability on the MCA Portal & Apply for the Name approval of the Company. with RUN Form.": [],
                "Once name has been approved, Proceed with the SPIC(INC 32) Private Limited Incorporation Form with the E-MoA & E-AOA of the Pvt Ltd Company.": [],
                "Now Apply for the PAN & TAN Application for the Private Limited Company which is issued with he Certificate of Incorporation.": [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          DocumentRequiredSection(
            title: "Documents required for Private Limited Company Registration",
            data: PrivateCompanyData.documentRequired,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Benefits of Private Limited Company Registration",
              subtitle:
                  "Below are the benefits of the private limited company –",
              steps: {
                "Easily Setup and recommend to Growing Startups.": [],
                "Limited Liability for Members.": [],
                "More Credibility as Compare to others.": [],
                "Easily raise funds from Investors.": [],
                "ESOP Option are available to motivated Employees.": [],
                "Name Protection available.": [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "Pvt Ltd Company registration name availability",
              description:
                  "​Basically, in the private limited company, you have to choose a unique name. because once a name has been registered with the MCA then no one other company take over the same name. It’s just like Brand Registration.\n\nSo you have to provide 3-4 name during the name approval process during the Private Limited Company Registration Process. once you provide the company name, then MCA will check the same and approved as per the name availability rules and regulations. you can check here about How to Search a Company Name.",
            ),
          ),
          SectionWithStepsAsLinks(
            color: Colors.red,
            data: DataWithStepsAsLinks(
              title: "Different Forms of Online Pvt Ltd Company Registration",
              subtitle:
                  "​If you thinking Private Limited Company is very expensive for the starting then you can choose below",
              steps: {
                "– Proprietorship Firm": "https://www.google.com/",
                "– Partnership Firm": "https://www.google.com/",
                "– OPC Registration": "https://www.google.com/",
                "– LLP Registration": "https://www.google.com/",
              },
            ),
          ),
          CostInvolvedSection(),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "How Much times takes to Register your Pvt Ltd Company ?",
              description:
                  "There is no Standered Timeline for the Private Limited Company Registration. Its all depend on the Documents Submission and Incorporation Forms.if we talk about the DSC & DIN then its takes min 1-2 days, for the Name approval its all depend on the govt which takes avg 2-3 days. so you can takes min 10 days to complete your whole incorporation of the private limited company.",
            ),
          ),
          FaqSection(
            title: "FAQ Series on Private Limited Company Registration",
            data: PrivateCompanyData.faqQuestions,
          ),
          HowToSection(),
        ],
      ),
    );
  }
}
