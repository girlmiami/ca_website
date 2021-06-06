import 'package:ca_website/models/dataWithDescription.dart';
import 'package:ca_website/models/dataWithSteps.dart';
import 'package:ca_website/reusable/iso_certification_data.dart';
import 'package:ca_website/widgets/book_consultancy.dart';
import 'package:ca_website/widgets/registration_fees.dart';
import 'package:ca_website/widgets/section_with_description_only.dart';
import 'package:ca_website/widgets/section_with_steps.dart';
import 'package:ca_website/widgets/top_section.dart';
import 'package:flutter/cupertino.dart';

import '../../main.dart';

class IsoCertificationMainPage extends StatefulWidget {
  const IsoCertificationMainPage({Key key}) : super(key: key);

  @override
  _IsoCertificationMainPageState createState() =>
      _IsoCertificationMainPageState();
}

class _IsoCertificationMainPageState extends State<IsoCertificationMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight - 100,
      child: ListView(
        children: [
          TopSection(
            bigText: "ISO Certification in India",
            smallTextLine1:
                "Apply for ISO Certification and Registration in India with Lowest Cost.",
            smallTextLine2: "Start Just at 1499/- INR",
            showButton: true,
          ),
          // DescriptionWidget(
          //   text:
          //       "Are you looking for ISO Certification in India ? Then this is Good Place to find about How to Get ISO Certification in India ? Here we guide to you about ISO Certification Process , Cost , Consultant and Online Registration. We also provide to you about Type of  ISO Certificate , ISO Certification Body , Required Documents for ISO Registration.",
          // ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "In today’s competitive world, you have to provide people with better quality services and to maintain a good image in the market. Even if your organization wants to sell and reach the international market, you have to prove your organization worthiness and your products in the market. ISO Certification in India helps in that. ISO Certification certifies that your goods/ services, as well as your organization, provide quality and other standards as per the international standards. In this article we will talk about ISO certification, types, bodies, cost, process and documents required for ISO Certification in India and how MyOnlineCA will help you to get your ISO certificate. MyOnlineCA is a web service provider which is providing services of registration under various recognized authority like Ministry of corporate affairs, Income tax department of India and others. So let us first begin with what ISO is.",
              title: "Introduction about ISO Certification in India",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "International standard organization for standards (ISO) is an international entity which develops ISO standards in furtherance of international trade. It was formed in 1947 as an organization to promote international industrial and commercial standards. Around 162 countries are members of ISO and has been laying down standards for international trade and facilitates world trade by providing a common standards for all the countries.",
              title: "What is ISO Registration",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "ISO certification ensures that the products or services provided are meeting standards and quality. ISO is an independent and nongovernmental organization providing standards for quality, efficiency and safety of goods and services of an organization. The ISO certificate certifies the organization’s quality management systems. There are various objectives of ISO some of which are: increase the quality and productivity of the organization, making organization hub for profitable opportunities, customer and employee satisfaction, and best quality products and services.",
              title: "What is ISO Certification in India",
            ),
          ),
          RegistrationFeesSection(
            data: IsoCertificationData.isoRegistrationFees,
          ),
          BookConsultancy(
            title: "Book Free Consultation Right Now",
            subtitle: "ISO Registration Certificate",
            subtitle2: "Trusted by 1 lakh + Customer across India",
            typeOfForm: "Gst Registration",
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Type of ISO Certification in India",
              subtitle:
                  "There are various types of ISO certification for your goods and services. You have to select certifications on the basis of your business and the goods and services you provide. Some of the types of ISO certifications are the following:",
              steps: {
                "ISO 9001 for quality management system which provides confidence in your product":
                    [],
                "ISO 13485 for sector-specific quality standard": [],
                "ISO 14001 for environmental management system": [],
                "OHSAS 18001 for occupational health and safety management system":
                    [],
                "AS9100 for quality management system standards for the aerospace industry":
                    [],
                "ISO ITAR for manufacturing, sales and distribution of technology":
                    [],
                "Lean Manufacturing for maximization of output while minimizing the waste":
                    [],
                "R2 Certification for handling electronic waste responsibly":
                    [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "ISO Certification Body",
              subtitle:
                  "It must be kept in mind that ISO itself does not provide certificates for quality however, parties can grant you certification. There are various ISO certification bodies in India like Bureau Veritas, BSI, Intertek, TuvNord etc. which provide certification. It has to be kept in mind that while selecting an ISO certification body you have to choose a proper third party to certify your business. It should have accreditation from ISO or at least fulfil the criteria for ISO Accreditation bodies. One can see the following attributes for selecting proper ISO Certification Body:",
              steps: {
                "Should have a good reputation in the market": [],
                "Should have accredited i.e. licensed to provide you ISO Certification":
                    [],
                "must be specialized in the your area of work and ISO Certificaion":
                    [],
                "Should have more experience": [],
                "Provides integrated audits": [],
                "Is flexible towards your organization and to work with your organization":
                    [],
                "Cost must be reasonable": [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Documents required for ISO Certification in India",
              subtitle:
                  "The documents required for ISO Certification depends upon the type of ISO Certification you are obtaining for your organization. Let’s take the example of most commonly used ISO certification i.e. 9001 which is the quality management system (QMS). Some of the documents have been mentioned belew which are  mandatory documents, mandatory records and non mandatory documents for such ISO Certification:",
              steps: {
                "Scope of the QMS –  In the scope of the QMS Mandatory records are Monitoring and measuring equipment calibration records and Non Mandatory documents are  Procedure for addressing risks and opportunities.":
                    [],
                "QMS Policy and objectives – QMS Policy and objectives Mandatory records are about design and development outputs review and non mandatory documents are Procedure for design and development.":
                    [],
                "Criteria for evaluation –  In the Criteria for evaluation mandatory Records about design and development inputs and Non mandatory documents are sale procedure.":
                    [],
                "The selection of suppliers –mandatory records of suppliers are Records of design and development controls and outputs.":
                    [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "ISO Certification Process",
              steps: {
                "Select ISO standard in which you want a certificate and an ISO certification body for certification":
                    [],
                "Make an application to the ISO certification body in its prescribed format containing the rights and duties of the owner of the organization and liabilities issues, access rights and confidentiality clauses.":
                    [],
                "The ISO certification body will review your application and documents provided in the application. The ISO certification body will review the quality manuals and documents of your organization.":
                    [],
                "The ISO certification body identifies the major weakness/ faults in the system and then will provide a cure period to the organization to rectify such faults and weakness in the organization.":
                    [],
                "The Organization has to prepare an action plan for curing the faults mentioned by the ISO Certification body. It shall contain a list of actions to be taken for meeting the standards.":
                    [],
                "Then the ISO certification body will carry aninitial certification audit to check the changes made and analyze the non-compliances in the organization. The ISO Certification body will divide the non-compliances into minor and major non-compliances":
                    [],
                "In case all the non-compliance are fulfilled then the ISO audit report will be created and you will be granted ISO certification.":
                    [],
              },
              subtitle2:
                  "Hope now you are aware about the ISO Certification Process in India.",
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "ISO Certification Cost",
              subtitle:
                  "While applying for ISO certification, the organization always has to check the cost which is involved in the ISO certification. However, the cost of ISO certification varies from organization to organization, and they are charged differently on the following basis:",
              steps: {
                "Number of employees": [],
                "Implemented ISO standard": [],
                "Number of processes involved": [],
                "Level of risk in the nature of work": [],
                "the number of working shifts etc.": [],
              },
              subtitle2:
                  "So above factors decide the ISO Registration Cost in India.",
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "The time for getting ISO certification depends upon the size of an organization. The time thus varies from an organization to organization. It generally takes about 6-8 months for the small and micro-organization. It generally takes about 8-12 months for a medium enterprise.  it generally takes 12-15 months for large organization.",
              title: "Timeline in ISO Registration",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "Due to more and more competition, organizations are also focusing on the quality of their product and making a good public image. ISO certification helps to certify the image and quality of your goods and services as well as your organization. Many people who are expert in the ISO standards, who are experienced are becoming consultants. Such ISO Certification Consultants advise and makes the organizations understand the process as well as your organization and tell you the best way to implement ISO certification and its requirements. So you can easily find ISO Certification Consultant Online.",
              title: "What is ISO Certification Consultant ?",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "MyOnlineCA is India’s leading online legal services provider. It is associated with more than 100 startup and companies per month across India. MyOnlineCA has been providing low cost and feasible services which every startup requires. MyOnlineCA works as an aggregator for providing ISO certification and consultant through our various expertise will help your organization regarding ISO Certification. MyOnlineCA provides assistance and solves your queries through mail, phone and WhatsApp. MyOnlineCA helps organization in determining the type of ISO which you as an organization should obtain and then facilitating you to obtain ISO Certification.",
              title: "How MyOnlineCA Helps on ISO Registration Online?",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "As you can see in above article that ISO Certification can be done easily. ISO certification ensures that the products or services provided are meeting standards and quality. ISO as an independent body provides standards for quality, efficiency and safety of goods and services of an organization. The ISO certificate certifies the organization’s quality management systems. All you have to do is select the proper type of ISO Certification and an ISO certification Body which will certify that your products are upto the ISO standards. An organization which are looking forward to entering into the global market it is beneficial to get ISO Certification so as to certify that your products are of good quality and possess the minimum standards provided by the ISO. So if you are thinking of starting a business and you want to enter into global market then you should get ISO certification.\n\nAs you can see MyOnlineCA is a web service provider which provides services of registration under various recognized authority and team is giving their expert advice to you so it will be beneficial for you. MyOnlineCA will apply for ISO certificate for you and you will get your certificate in shortest time. If you want to take service from MyOnlineCA then you can apply on the website or you can download the mobile app and apply through mobile application so it will be more convenient.",
              title: "Conclusion :",
            ),
          ),
        ],
      ),
    );
  }
}
