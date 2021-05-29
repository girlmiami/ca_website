import 'package:ca_website/models/dataWithDescription.dart';
import 'package:ca_website/models/dataWithSteps.dart';
import 'package:ca_website/reusable/llp_data.dart';
import 'package:ca_website/widgets/advantages_section.dart';
import 'package:ca_website/widgets/book_consultancy.dart';
import 'package:ca_website/widgets/document_required_section.dart';
import 'package:ca_website/widgets/faq_section.dart';
import 'package:ca_website/widgets/registration_fees.dart';
import 'package:ca_website/widgets/section_with_description_only.dart';
import 'package:ca_website/widgets/section_with_steps.dart';
import 'package:ca_website/widgets/top_section.dart';
import 'package:flutter/cupertino.dart';

import '../../main.dart';

class LlpRegistrationMainPage extends StatefulWidget {
  @override
  _LlpRegistrationMainPageState createState() =>
      _LlpRegistrationMainPageState();
}

class _LlpRegistrationMainPageState extends State<LlpRegistrationMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight - 100,
      child: ListView(
        children: [
          TopSection(
            bigText: "LLP Registration Online",
            smallTextLine1:
                "India’s No #1 Portal to Get Done LLP Registration | LLP Incorporation at Cheapest Cost 10000+LLP Registered. Are you Next ?",
            smallTextLine2:
                "Package Start Only From 8999/- INR (All Inclusive)",
            showButton: true,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "What is LLP ?",
              description:
                  "LLP is called Limited Liability Partnership which is introduced in the year of 2008 under the Limited Liability Partnership Act 2008. LLP is similar to the general Partnership Firm Registration but due to its legal structure there is no limited liability in the general partnership so govt of India introduce Limited Liability Partnership on 9th January 2009 and the First LLP Incorporated on 2nd April 2009 as per Wikipedia.",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "What is LLP Registration",
              description:
                  "LLP Registration is a standard Process where 2 LLP Partners create a LLP Incorporation Entity with the limited liability and open a current bank account on the LLP Name & Start the business. Here partners have to pay the Government Fee & Professional Fee for the same.",
            ),
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "LLP Incorporation Rules",
              subtitle:
                  "Simple 5 Steps Process to Register Your Private Limited Company in India",
              steps: {
                "Minimum required 2 partners to create a LLP Incorporation.":
                    [],
                "There is No Authorised share capital concept like private limited company registration. so you can start with any amount of the share capital of the LLP Partners":
                    [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          RegistrationFeesSection(
            data: LlpData.llpRegistrationFees,
          ),
          BookConsultancy(
            title: "Book Free Consultation Right Now",
            subtitle: "Company Registration in India",
            subtitle2: "100% Govt Certified Platform with 1 lakh+companies",
            typeOfForm: "LLP Registration",
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "LLP Incorporation Procedure",
              subtitle:
                  "LLP Incorporation have complex process by the Govt but with the help of myonlineca you can simplified in Only 3 Steps.",
              steps: {
                "Simply Fill-Up LLP Registration Application Form and Fill-Up Basic Details of Business.":
                    [],
                "Make the Professional Fee 1st Installment 1999/- INR Only via Cards/Netbanking/UPI etc.":
                    [],
                "Get Instant Confirmation Email & Call with the Assign Dedicated CA which helps you to Start your LLP Registration Process.":
                    [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          DocumentRequiredSection(
            title: "Documents Required for LLP Registration",
            data: LlpData.documentRequired,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "Feature of LLP Registration",
              description:
                  "There are many features of LLP. An LLP is a body corporate with separate legal entity from its partners which means it can sue or be sued in its own name. An LLP will be governed by LLP agreement so partner’s duties will be decided under Partnership Agreement and mutual rights also governed by the LLP. An LLP cannot be started with sole owner, every LLP should have at least two partners in it. It is also liable to the extent of its assets which means partner’s liability will be limited and a partner will liable extent of agreed contribution in the agreement and a partner is not liable for other partner’s negligence. As per the rules and regulation of MCA only designated partner are responsible for compliance. If you are running a company and want to convert into an LLP then you can do this. So as you can see that LLP has many features and you can finding up an LLP whenever you want or in its time.",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "Minimum Requirements for LLP registration",
              description:
                  "​​LLP requires minimum two partners for incorporation. However unlike companies LLP does not require a minimum capital under the LLP act. Further, you also require LLP agreement as the same has to be submitted with roc upon incorporation of the LLP. Further, your designated partners should obtain designated partners identification number just like director identification number is provided to the directors of the company. Further, they are also required to obtain digital signature certificate. So as you can see that these are minimum requirement for LLP registration so you have to fulfill these requirements if you want to start your own LLP firm.",
            ),
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "LLP Registration Process",
              subtitle:
                  "In October 2018 an amendment came into force in which the process of LLP registration was updated. As per the new rules and regulation you can file your incorporation form through online mode for which you have to follow the following steps.",
              steps: {
                "First step of new registration process of LLP is to obtain Digital signature certificate (DSC) for proposed director and without obtaining DSC you cannot proceed further so obtaining a DSC is important. A DSC is a very important document for an LLP because you have to mention DSC when you filecompliances. You cannot file an E form without DSC. So you have to first obtain the DSC.":
                    [],
                "After obtaining a DSC, you have to reserve firm’s name under LLP-Run services. Now amendment has come into force so there is no requirement of form 1, earlier everyone has to file form 1 for reservation of name but now you have to reserve your firm’s name under LLP-Run services.If you want to use services of LLP-RUN then you have to create an account on the website then you have to click on the LLP-RUN web service then you can request for reservation of name. You can request 2 names for your LLP so registration on one name will be done if it is available. During requesting on LLP-RUN service you need to pay required fee for reservation of name.":
                    [],
                "There is another procedure also available for which you can file the FiLLiP form. The new amendment introduced FiLLiP form by filing this form you don’t have to reserve your LLP’s name under LLP run services. There is no requirement of different-different forms. FiLLiP is an incorporation form so you can fill this. After filing this form authority will check your form along with documents and if everything goes rights then you will get your incorporation number. After incorporation of your firm you have to file your LLP agreement within 30 days of its incorporation.":
                    [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
                title: "LLP Registration Cost",
                steps: {
                  "Director Partner Identification Number ( DPIN/DIN)- Costing for DIN 1000 Rupees on 2 Partners. its valid for Lifetime.Its just like UserId for the Partner.":
                      [],
                  "Digital Signature (DSC)– Costing vary from 2000 Rupees on 2 Partners. Its made by Sify, Emudra and some other companies and used for signing and filing forms during registration":
                      [],
                  "Application for Name Reservation- Costing is 500 Rupees. Its filed for reserve your LLP Name.":
                      [],
                  "Government Charges including Stamp Duty Costing around 750 Rupees.":
                      [],
                  "Preparing LLP Agreement by professional costing around 250 Rupees.":
                      [],
                  "Preparing LLP Partner Consent by Professional costing around 250 Rupees.":
                      [],
                },
                subtitle2:
                    "Total Government Expenses around 4750 rupees to 5000 Rupees.\n\nApart from Government Expense there are professional charges which very from 4000 to 6000/- INR professional to professional. MyOnlineCA always provide to you better competitive rates."),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "Timeline for LLP Incorporation",
              description:
                  "Timeline of LLP registration is not lengthy as you can file your incorporation form online. Online procedure will save your lot of time and energy. So as you can see above that Procedure is very simple and easy. You have to reserve your LLP’s name first or you can skip this by filing FilliP form. After filing incorporation form authority will check your form. In few days you will get your incorporation number. After getting an Incorporation number you have to file LLP agreement within 30 days of its incorporation. So as you can see that timeline is very short you will get your incorporation certificate as soon as possible and after getting incorporation certificate you need to file LLP agreement to the Ministry of corporate affairs within 30 days.",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "How to Choose LLP name during registration",
              description:
                  "As you can see in above article that there are two ways for reserving your LLP name. First is through LLP-Run web services and second one is FilliP form. LLP-Run web service is older method and FilliP form is new method. Through LLP-Run web service you can reserve your LLP name and you can reserve maximum 2 names because in case if you don’t get first name then may be you can get the other one. If you want to reserve your LLP name through LLP-Run web service then you have to visit the official website of Ministry of corporate affairs and then you have to choose LLP registration where you can select the LLP-Run web service.\n\n​If you want to reserve your LLP name through Fillip form then you have to fill the form on the website of Ministry of corporate affairs. FiLLiP form is for incorporation of LLP firm, by filing this form you don’t have to file the other forms so it will be easy for you if you file this form. Because After filing of LLP-Run service you have to fill the other forms also but by filing FiLLiP form you are not required to filing the other forms.",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "How to Check LLP name availability",
              description:
                  "As you can see in above article that you can reserve your LLP name by filing the Fillip form or by LLP-Run services. You can also check personally on the internet that if you name is available or not. You can reserve 2 names for your LLP so you have choose the name accordingly to conditions of Ministry of Corporate affairs.",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "What are the Annual Compliance after LLP registration",
              description:
                  "After incorporation of LLP firm you have to comply with the rules and regulation of Ministry of Corporate affairs and all compliances should be done within time period because in case failure of compliances you may have to pay huge fine for this so be aware. After incorporation of your LLP you have to file your Annual statement to the MCA because it is compulsory and also you have to file your Profit and Loss statement to the MCA.After incorporation of LLP you need to comply with the rules and regulation of Income tax department also because it is compulsory. You have to file Income tax of your LLP and also you have to make a PAN card for your LLP because without PAN you cannot file your income tax return. for the more info visit here on LLP Annual Filing Details.",
            ),
          ),
          FaqSection(
            title: "FAQ on LLP Registration Online",
            data: LlpData.faqQuestions,
          ),
          AdvantagesSection(
            title: "Advantages of LLP Registration",
            data: LlpData.advantages,
          ),
        ],
      ),
    );
  }
}
