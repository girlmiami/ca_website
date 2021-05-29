import 'package:ca_website/models/dataWithDescription.dart';
import 'package:ca_website/models/dataWithSteps.dart';
import 'package:ca_website/reusable/fssai_registration_data.dart';
import 'package:ca_website/reusable/gst_return_filing_data.dart';
import 'package:ca_website/widgets/advantages_section.dart';
import 'package:ca_website/widgets/book_consultancy.dart';
import 'package:ca_website/widgets/registration_fees.dart';
import 'package:ca_website/widgets/section_with_description_only.dart';
import 'package:ca_website/widgets/section_with_steps.dart';
import 'package:ca_website/widgets/top_section.dart';
import 'package:flutter/cupertino.dart';

import '../../main.dart';

class FssaiRegistrationMainPage extends StatefulWidget {
  const FssaiRegistrationMainPage({Key key}) : super(key: key);

  @override
  _FssaiRegistrationMainPageState createState() =>
      _FssaiRegistrationMainPageState();
}

class _FssaiRegistrationMainPageState extends State<FssaiRegistrationMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight - 100,
      child: ListView(
        children: [
          TopSection(
            bigText: "FSSAI Registration | Fssai License | Food License",
            smallTextLine1:
                "#1 Portal to get done FSSAI Registration with lowest cost in 3 simple steps with\n"
                "Govt Certified Portal under Registration No : DIPP9122",
            smallTextLine2:
                "Package Start From Just 2499/- INR (Lowest Pricing in India)",
            showButton: true,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "What is fssai full form or fssai meaning?",
              description:
                  "if you are thinking to start a new food business then you have to know about the FSSAI Registration or Food License. FSSAI meaning refers to “Food Safety and Standard Authority of India“. From the 2006 all the food related acts come under the FSSAI.The FASSI Department make sure i.e all the food related business must follow the guidelines and regulations under the FSSAI Act 2006. FSSAI is responsible for setting the standard and rules & regulations & directly report to health & family welfare, government of India.",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "What is fssai registration | fssai license?",
              description:
                  "FSSAI Registration is basically a 14 digit registration number which is used by the food related business & printed on the food products with license number. FSSAI Registration is required for each type of the business whether it’s a trader or manufacturer or import export or dairy farms etc. if you are involved in the food processing or food manufacturing or packaging or distributing then its mandatory to required the FSSAI Registration or Food License.",
            ),
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "FSSAI Basic Registration Package Just at 2499/- INR",
              steps: {
                "FSSAI Application Drafting": [],
                "Government and Professional Fee": [],
                "FSSAI Basic License Registration up to 12 Lakh Rupees Turnover Entity":
                    [],
                "FSSAI Registration Certificate with FSSAI Number": [],
                "10+ Premium Legal Agreements": [],
              },
              subtitle:
                  "Every person who is applying for the GST Registration has to file GST return Filing. GST Return is mandatory for each person whose enroll under the GST Registration.There is a lot of the type of the GST Returns which you have to file the monthly basis with one annual return. A registered personal have to file the returns about the following things –",
              subtitle2:
                  "if you are registered under the GST Composition Scheme then there are the different rules for the same.",
            ),
            showBackgroundColor: true,
            showButton: true,
          ),
          BookConsultancy(
            title: "Book Free Consultation Right Now",
            subtitle: "FSSAI Registration",
            subtitle2: "Simply Fill-Up Below Details and Get Started",
            typeOfForm: "Gst Registration",
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Who Required FSSAI Registration | FSSAI License?",
              subtitle:
                  "FSSAI Registration or Food License is required for all type of the food related business. Even if you are thinking to starting a food related business by way of food processing or manufacturing or distributor then its required from starting irrespective of the turnover.\nIts helps you in following way –",
              steps: {
                "Increase your customer confidence in terms of safety": [],
                "Helps in removal of multiple legal regulations.": [],
                "Helps in promote innovative products.": [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          AdvantagesSection(
            data: FssaiRegistrationData.typesOfRegistration,
            title: "Type of FSSAI Registration | License",
            subtitle:
                "Basically for all the small food related business required legal registration to starting a business in India. In this legal registration business incorporation entity like private limited company or proprietorship firm etc are included. Apart from this you need other license like Food License or GST Registration etc. so Food License and FSSAI License are the same.\n\nThere are mainly 3 type of the Food License or FSSAI License category which is required by each food related business.",
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "Food and Safety Department is related to the FSSAI Department. Food and Safety department works to farming rules regarding the food related articles and implementation of the policies. It’s also provide the scientific and technical support to the central govt regarding the food related articles. Its act as collection of the food related data consumption with general awareness about the Food Safety and Food Standards.",
              title: "What is food and safety Department or Registration",
            ),
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title:
                  "Documents Required for the FSSAI Registration | Food License",
              steps: {
                "Personal information of the FSSAI Application Applicant –": [
                  "PAN Card: Copy of PAN is mandatory identity proof.",
                  "Copy of Aadhaar Card/ Voter identity card/ Driving License/Passport (Either of the Four)",
                  "Passport size Photo",
                ],
                "Documents for Registered office from where the food business is being operated":
                    [
                  "The latest Utility Bill( Electricity / Water Bill)",
                  "Copy of Rent Agreement( if Rented property)",
                  "Copy of property paper (if owned property)",
                  "Note – It’s can be a residential property, there is no issue in that but above documentation are required for the same.",
                ],
                "In addition to the above following documents are also required for Basic FSSAI Registration:":
                    [
                  "Form-A must be appropriated completely and signed by all directors/ partners/ proprietor /Executive member of society",
                  "Declaration regarding food safety management system(FSMS) on the letterhead of the firm or company",
                  "Proof of Income determining the annual turnover of food business operator",
                  "Nomination of the person appointed by the company in Form No.IX and the copy of Board Resolution",
                  "Self Declaration by Director",
                  "Affidavit on Non-Judicial Stamp paper",
                ],
                "In addition to the above following documents are also required for State or Central FSSAI License :":
                    [
                  "Duly filled Form – B must be correctly and appropriately completed and signed by the directors/ partners/ proprietor/ Executive member of society",
                  "List of Partners/Proprietor/Executive Members of Society with complete address and contact details.",
                  "Blueprint plan/layout plan of the processing unit installed capacity and horsepower used.",
                  "Constitution of company MOA and AOA / Partnership DeedAnalysis report as per the nature and business activity of the company",
                  "Food and safety management system and certificate",
                  "Declaration regarding food safety management system(FSMS) on the letterhead of the firm or company",
                  "Proof of Income determining the annual turnover of food business operator",
                  "Nomination of the person appointed by the company in Form No.IX and the copy of Board Resolution",
                  "Self Declaration by Director",
                  "NOC from the local authority",
                  "Affidavit on Non-Judicial Stamp paper",
                  "List of food category desired to be manufactured",
                  "Production unit Photograph",
                  "Any other documents which may be a demand by authority on the basis of the requirement of the business.",
                ],
              },
              subtitle2:
                  "If you want to know more about the documents required for FSSAI Registration then you can checkout here.",
              subtitle:
                  "FSSAI Registration is required the documents depend on the type of the legal entity and type of the Food License or FSSAI Registration.Following are the documents required for FSSAI registration",
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "What is FSSAI Registration Fee or Cost?",
              steps: {
                "FSSAI Registration – 100/- Per Year": [],
                "FSSAI State License – 2000/- 5000/- Per Year": [],
                "FSSAI Central License – 7500/- Per Year": [],
              },
              subtitle2: "you can read here more about FSSAI Registration Fees",
              subtitle:
                  "FSSAI Registration Fee is divided into the government fee and professional fee. Government fee officially charged by the govt for the application processing fee and professional fee is charged by the CA/Lawyer/Professional to prepare your application.\nBelow are the fee structure –",
            ),
            showButton: false,
            showBackgroundColor: false,
          ),
          AdvantagesSection(
            title: "FSSAI Registration Form",
            subtitle:
                "FSSAI Registration or Food License have mainly 2 type of the forms i.e is Form A & Form B.\n\nBelow are the details about the both Forms –",
            data: FssaiRegistrationData.registrationForm,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "How to Apply for FSSAI Registration?",
              steps: {
                "You have to submit above customize FSSAI form with the necessary details & make the payment of the application via debit card/credit card/net banking.":
                    [],
                "Once you make the payment, you will get the confirmation via sms & email with the documents checklist.":
                    [],
                "You have to send us the documents via email as scanned copies.":
                    [],
                "Be Relax ! Your Work is done and our professional will submit your application with the government in professional way and will delivered to you the certificate.":
                    [],
              },
            ),
            showButton: false,
            showBackgroundColor: false,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "FSSAI License is issued by the department for 1-2 year for the same. After that there is renewal process of FSSAI License. if you want to check validity or authority of FSSAI License then you can checkout here about How to Check FSSAI License Number Online.",
              title: "Validity of FSSAI License",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "If any food operator is operating in more than 10 state then its required the central registration for the registered office.If Importers or exporters apply for the FSSAI Registration then they need IEC Code before the Food License & have to apply on the same address.The brand owner have to display the FASSI Logo and license number on the food package.",
              title: "Important Guidelines for the Food License Registration",
            ),
          ),
        ],
      ),
    );
  }
}
