import 'package:ca_website/models/dataWithDescription.dart';
import 'package:ca_website/models/dataWithSteps.dart';
import 'package:ca_website/reusable/gst_registration_data.dart';
import 'package:ca_website/widgets/advantages_section.dart';
import 'package:ca_website/widgets/book_consultancy.dart';
import 'package:ca_website/widgets/faq_section.dart';
import 'package:ca_website/widgets/section_with_description_only.dart';
import 'package:ca_website/widgets/section_with_steps.dart';
import 'package:ca_website/widgets/top_section.dart';
import 'package:flutter/cupertino.dart';

import '../../main.dart';

class GstRegistrationMainPage extends StatefulWidget {
  const GstRegistrationMainPage({Key key}) : super(key: key);

  @override
  _GstRegistrationMainPageState createState() =>
      _GstRegistrationMainPageState();
}

class _GstRegistrationMainPageState extends State<GstRegistrationMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight - 100,
      child: ListView(
        children: [
          TopSection(
            bigText: "GST Registration – New GST Registration Online",
            smallTextLine1:
                "India’s Only Govt Certified Company “MyOnlineCA” Helps on GST Registration | New GST Registration Online",
            smallTextLine2:
                "Start Only From 999/-INR with Free DIY Legal Agreements",
            showButton: true,
          ),
          BookConsultancy(
            title: "Book Free Consultation Right Now",
            subtitle: "Let's Start My GST Registration",
            subtitle2: "Issue over 30k+ GST Number across India",
            typeOfForm: "Gst Registration",
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
                title: "What is GST Registration ?",
                description:
                    "GST Registration introduced in India from July 2017. As per the act its a mixture of indirect tax like VAT & Service tax for the same. It is required when your turnover or sales cross more than 40 lakh rupees in a year ( 10 lakh for NE * Hill States) as per the latest amendment from 1st April 2019.\n\nFor some specific business, it is mandatory registration without crossing the turnover limit. For ex, if you are running an e-commerce business then you have to require the GST Registration from the starting of business. We at MyOnlineCA helps you on GST Registration Online which takes only 2-3 working days and got the verified GST Certification with login details in your Email Inbox."),
          ),
          AdvantagesSection(
            title: "Who is required New GST Registration",
            data: GstRegistrationData.advantages,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "How GST Registration Online can be done",
              steps: {
                "First of all, just log in on GST official Portal.": [],
                "Fill up the Part A of GST Registration Form-1 by the Professional.":
                    [],
                "You will get received the reference number via email and mobile number.":
                    [],
                "Fill Up the second part of the registration form and upload the below documents as per the business entity.":
                    [],
                "Finally, a Certificate of Registration has been issued by the Government of India once your application is approved.":
                    [],
              },
              subtitle2:
                  "But Remember you always need a Professional like CA/GST Consultant to Choose the Right AO Code & Proper HSC Code for your registration with Proper Documents. so Always take services from Certified GST Consultant like myonlineca which helps you to get done GST Registration Online",
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "GST Registration Package @ 999/- INR",
              steps: {
                "GST Registration Application Filing by Legal Expert.": [],
                "GST ARN Number Delivery in 1 Day.": [],
                "GST Registration Final Certificate Delivery in 4-5 Days.": [],
                "10+ Premium Legal Agreements for your Business": [],
                "Premium Invoice Templates": [],
              },
            ),
            showBackgroundColor: true,
            showButton: true,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Features of the GST Registration in Short?",
              steps: {
                "The concept of New GST Registration – Simply its a mixture of the all other taxes like VAT/CST or Service tax or Excise duty or Entertainment tax, etc. and introduced in India from July 2017.":
                    [],
                "GST Registration Limit – if your business turnover or sales cross more than 40 lakh rupees in a year except in some certain business it’s required from starting.":
                    [],
                "GST Registration Tax Rates – GST Tax rates are very product or services. It’s starting from 0% to 28% for the same.":
                    [],
                "GST Input Tax Credit Scheme – Only GSTIN Holder’s which are registered under the GST can avail the input tax credit scheme where they can claim the tax which is already paid during the purchase of products or services.":
                    [],
                "GST Return Filing Concept – All the GSTIN Holder’s have to file the 3 GST Return monthly or quarterly basis but have to pay the taxes every month.":
                    [],
                "GST Registration under Composition Scheme – GST Registration has an option for the composition scheme when you have less than 1 cr. turnover and want to pay taxes per month from 1% to 5% without a claim the input tax credit.":
                    [],
              },
            ),
            showButton: false,
            showBackgroundColor: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "What are the benefits of the GST Registration",
              steps: {
                "More Strong as compare to Competitor – GST Registration gives you a valid legal entity registration so you can easily show your valid proof to any other firm or person.":
                    [],
                "Take Input tax credit – GST Registration holders can avail the input tax credit during the purchase of any goods or services. So if you are B2B Business then its required GST registration from starting.":
                    [],
                "Sell in India anywhere – GST Registration holders can sell their products or services anywhere across India. So there is no boundation like VAT/CST. You can easily supply the products interstate.":
                    [],
                "Open a current business bank account – GSTIN Holder’s can open easily a current bank account on the basis of GST Registration Certificate.":
                    [],
                "Sell Online – if you thinking about the e-commerce then on the basis of GSTIN Registration Number you can easily sell with e-commerce portals like Amazon or Flipkart etc":
                    [],
                "Bid for the Govt Projects – if you are contractor & want to apply for any type of the govt tender then all the Govt Projects required only valid firms with the GST Number.":
                    [],
                "Accept big projects from MNC – Until if you not a valid business with the valid legal entity proof, MNC are not dealing with the same.":
                    [],
                "Increase Trust between your customer’s – if you issue a Valid GSTIN Tax invoice then it increases the trust between your customer’s & increases your brand value.":
                    [],
              },
              subtitle:
                  "There are a lot of the benefits under GST Registration which are following :-",
            ),
            showButton: false,
            showBackgroundColor: false,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "GST Registration number is an identification number which is assign to each Firm or Company or Individual.Its a like a PAN Number for the same. Its a 15 digit unique tax identification number. The first two digit show the state code & another next 10 digit show the pan number of the entity or person. Apart from this next 1 number show the state Code & another 2 number are random. For Ex – 08AAKCM0506E1ZT\n\nGST Registration Number is 15 Digit identification number which is allotted to each applicant. it’s completely based on the Pan Number and State code. First two digit represent the state code and another 10 digits represent the Pan number of the client , one digit represents the entity code( Like proprietorship firm or partnership, etc), one digit is blank and the last one represents check digit.",
              title: "What is GST Registration Number ?",
            ),
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title:
                  "What are the Documents Required for the GST Registration ?",
              steps: {
                "In the case of Sole Proprietorship Firm –": [
                  "Pan Card and Address Proof of the proprietor.",
                  "any other firm registration certificate like MSME Registration etc.",
                ],
                "In case of Partnership Firm –": [
                  "Pan card of the Partnership Firm with the deed.",
                  "Partnership registration certificate & partners id & address proof.",
                ],
                "In the case of Private Limited Company or One Person Company –":
                    [
                  "Pan Card of the Company , COI , MOA & AOA of Company.",
                  "Board Resolution with Directors Id & Address Proof.",
                ],
                "In the case of LLP (Limited Liability Partnership) –": [
                  "COI & Pan Card of Company.",
                  "Deed + Partners Id & Address Proof",
                ],
              },
              subtitle:
                  "You have to required to prepare some of the documents as per the legal entity :-",
              subtitle2:
                  "Apart from the above docs its required the bank statement copy or passbook and proper business place electricity bill copy with the NOC or sale deed etc.​ For the more information check here about documents required for GST registration",
            ),
            showButton: false,
            showBackgroundColor: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "What is GST Registration Online Process ?",
              steps: {
                "Place a Request in the above form with your basic details.":
                    [],
                "Make the online payment professional fee via cards/net banking/upi":
                    [],
                "Get Connected with a Dedicated CA which helps you on entire GST Registration.":
                    [],
                "You will get ARN Number so you can check your GST Registration Status":
                    [],
              },
              subtitle:
                  "We simplified GST Registration Process in just 3 Steps –",
            ),
            showButton: false,
            showBackgroundColor: false,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "Under the GST Act law if you are liable to register under the GST but still you ignore the same or not paying or making short payment of the GST Tax Payment then there is penalty respective the 10% of the total tax amount subject to a minimum of 10000/- INR.\n\nThe penalty can be 100% of the tax amount when the offence is subject to deliberately evaded paying taxes.",
              title: "What is the Penalty for GST Registration ?",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "After the GST Registration, each assessee has to file the GST Returns as per the compliance. if you are registered under the regular scheme of the GST then you have to file the monthly basis returns for the same. Composition dealers have to file the quarterly basis with some conditions. you can check out here all about GST Return Filing.",
              title: "What is the Compliance after the GST Registration ?",
            ),
          ),
          FaqSection(
            title: "FAQ on GST Registration",
            data: GstRegistrationData.faqQuestions,
          ),
        ],
      ),
    );
  }
}
