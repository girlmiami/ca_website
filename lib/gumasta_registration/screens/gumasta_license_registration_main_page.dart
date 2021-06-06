import 'package:ca_website/models/dataWithDescription.dart';
import 'package:ca_website/models/dataWithSteps.dart';
import 'package:ca_website/reusable/gumasta_registration_data.dart';
import 'package:ca_website/widgets/advantages_section.dart';
import 'package:ca_website/widgets/book_consultancy.dart';
import 'package:ca_website/widgets/faq_section.dart';
import 'package:ca_website/widgets/section_with_description_only.dart';
import 'package:ca_website/widgets/section_with_steps.dart';
import 'package:ca_website/widgets/top_section.dart';
import 'package:flutter/cupertino.dart';

import '../../main.dart';

class GumastaLicenseRegistrationMainPage extends StatefulWidget {
  const GumastaLicenseRegistrationMainPage({Key key}) : super(key: key);

  @override
  _GumastaLicenseRegistrationMainPageState createState() =>
      _GumastaLicenseRegistrationMainPageState();
}

class _GumastaLicenseRegistrationMainPageState
    extends State<GumastaLicenseRegistrationMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight - 100,
      child: ListView(
        children: [
          TopSection(
            bigText: "Gumasta License Registration Online",
            smallTextLine1:
                "India’s No #1 Portal to get done Gumasta License Registration in Maharashtra or Mumbai anywhere",
            smallTextLine2: "",
            showButton: true,
          ),
          BookConsultancy(
            title: "Book Free Consultation Right Now",
            subtitle: "Gumasta License Application",
            subtitle2: "100% Maharashtra Govt Authorised | Issue 50k+license",
            typeOfForm: "Gst Registration",
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "Gumasta License is covered under the Maharashtra Shop & Establishment Act 1948. When any one person wants to start a business in Mumbai or Thane or Nagpur or anywhere in Maharashtra state then It requires a very important license that is called Gumasta License. Basically in India when you start any type of the business with physical shop then its required the shop act license from your local municipal party in each state. so these shop act licenses are called “Gumasta license” in Maharashtra state.",
              title: "What is Gumasta License?",
            ),
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Gumasta License Registration @2499/- INR",
              steps: {
                "Gumasta License Certificate": [],
                "Current bank account Opening Guide": [],
                "Govt Scheme & Benefits or Loan Guide": [],
                "10+ Free Premium Legal Agreements": [],
                "Dedicated Gumasta License Expert": [],
              },
            ),
            showBackgroundColor: true,
            showButton: true,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "Yes, Now from last 2-3 year, Maharashtra Govt Provide Govt portal to get done Gumasta License with the offline approval process but its a very complex so there is some Trusted online portal like myonlineca which helps you to get Gumasta License anywhere at your fingertips.",
              title: "Gumasta License Online Registration is Possible",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "Every citizen of the Maharashtra state who’s want to start their business required the Gumasta License Registration. In some case’s if you go with the GST Registration etc then it’s required when you have more than 20+ employees.",
              title: "Who’s Required Gumasta License Registration",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "Every citizen of the Maharashtra state who’s want to start their business required the Gumasta License Registration. In some case’s if you go with the GST Registration etc then it’s required when you have more than 20+ employees.",
              title: "Who’s Required Gumasta License Registration",
            ),
          ),
          AdvantagesSection(
            title: "Advantages of Gumasta License Online",
            data: GumastaRegistrationData.advantages,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Documents Required for the Gumasta License",
              steps: {
                "Proprietorship Firm Basic KYC For Gumasta License –": [
                  "Pan Card & Aadhar Card of the Applicant",
                  "Business Address Proof like Electricity Bill Copy with the NOC or Rent Agreement Copy or Sale deed, anyone.",
                  "Photograph of the applicant with the Shop",
                ],
                "Partnership Firm Basic KYC For Gumasta License –": [
                  "Pan Card & Aadhar Card of the All Partner’s with Partnership Firm Pan.",
                  "Business Address Proof like Electricity Bill Copy with the NOC or Rent Agreement Copy or Sale deed, anyone.",
                  "Photograph of the applicant with the Shop",
                  "Partnership Deed with the Stamp.",
                  "Authorized Letter from Partners.",
                ],
                "Pvt Ltd Company/ OPC/LLP Basic KYC For Gumasta License –": [
                  "Pan Card & Aadhar Card of the All Directors with Company Pan.",
                  "Business Address Proof like Electricity Bill Copy with the NOC or Rent Agreement Copy or Sale deed, anyone.",
                  "Photograph of the applicant with the Shop",
                  "MOA & AOA of the Company with the Certificate of Incorporation.",
                ],
              },
              subtitle:
                  "Gumasta License Online Registration required all the basic KYC Documents of business. This can be a very indifferent legal entity.",
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          AdvantagesSection(
            subtitle:
                "Gumasta License can be divided into the mainly 2 category –",
            title:
                "In Which City or Place Gumasta License Online Registration is Applicable?",
            data: GumastaRegistrationData.cityAvail,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Procedure for Gumasta License Online Application",
              subtitle:
                  "Gumasta License Procedure is Online and offline so there are 2 ways to submit your application –",
              steps: {
                "Fill up the Form Online on the Municipal Corporation of Greater Mumbai official Website or Maharashtra Govt Municipal Party Official Website.":
                    [],
                "Fill up the offline Form through Citizen Facilitation Center (CFC) which is established by the Municipal Corporation in Mumbai , Thane & Other place’s and Submit the application.":
                    [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Online Procedure for the Gumasta License in Mumbai",
              steps: {
                "You have to login on the official Municipal Corporation IN Mumbai":
                    [],
                "Fill up the Complete Form and Pay the Fee & Put the Challan Number.":
                    [],
                "a Unique UTN will be generated at the end & print out the final Form.":
                    [],
                "Go to Gumasta office and Submit application with all the relevant documents which is mentioned above.":
                    [],
                "Once all the Formalities are done, Inspector will check and verify the Docs and issued the Final Certification.":
                    [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "offline Procedure for the Gumasta License in Mumbai",
              steps: {
                "Download the Forms on Official Site & take the Printout or Visit nearby Citizen Facilitation Center (CFC).":
                    [],
                "Pay the relevant fee as per the table which can be download from above Link & submit the documents with the Application Form.":
                    [],
                "Once all the Formalities are done, Inspector will check and verify the docs and issued the Final Certification.":
                    [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "Visit the nearest CFC or use the online facility “Check Status” provided on Citizen Portal in order to keep track of your application. Unique Application No. (also called as Transaction ID) is essential in order to use this facility.",
              title: "Check status for the Gumasta License Online ?",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "Gumasta License Online Registration is very complex process on the approval of the application so if you take the help from professional like myonlineca then its takes only 2-3 days for the Registration.",
              title: "Timeline for the Gumasta License Registration",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "Yes, Gumasta license has a validity of the minimum 1 year. if you are from the Mumbai and have less than 10 employees then you got the lifetime validity for the gumasta license, but for the other place like Pune, Navi Mumbai or Thane etc you have to renew the same.",
              title: "Validity of the Gumasta License",
            ),
          ),
          AdvantagesSection(
            title:
                "What are the main rules defined under the Gumasta License –",
            subtitle:
                "There are many rules & regulations defined under the Gumasta License. Below are some key points –",
            data: GumastaRegistrationData.rulesDefined,
          ),
          FaqSection(
            title: "FAQ on the Gumasta License Registration",
            data: GumastaRegistrationData.faqQuestions,
          ),
        ],
      ),
    );
  }
}
