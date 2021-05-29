import 'package:ca_website/models/dataWithDescription.dart';
import 'package:ca_website/models/dataWithSteps.dart';
import 'package:ca_website/reusable/msme_registration_data.dart';
import 'package:ca_website/widgets/advantages_section.dart';
import 'package:ca_website/widgets/book_consultancy.dart';
import 'package:ca_website/widgets/section_with_description_only.dart';
import 'package:ca_website/widgets/section_with_steps.dart';
import 'package:ca_website/widgets/top_section.dart';
import 'package:flutter/cupertino.dart';

import '../../main.dart';

class MsmeRegistrationMainPage extends StatefulWidget {
  const MsmeRegistrationMainPage({Key key}) : super(key: key);

  @override
  _MsmeRegistrationMainPageState createState() =>
      _MsmeRegistrationMainPageState();
}

class _MsmeRegistrationMainPageState extends State<MsmeRegistrationMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight - 100,
      child: ListView(
        children: [
          TopSection(
            bigText: "MSME Registration Online",
            smallTextLine1:
                "Now Apply for MSME Registration Online anywhere in India with MyOnlineCA",
            smallTextLine2:
                "Govt Recognized Portal. Issued 1 lakh+ certificate",
            showButton: true,
          ),
          BookConsultancy(
            title: "Book Free Consultation Right Now",
            subtitle: "MSME Registration Application",
            subtitle2: "Just Fill-Up the Details and Get Started",
            typeOfForm: "Gst Registration",
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "MSME Registration is playing very important role for the small and medium business across India.Numerous surveys show that country’s true economic growth reckoned not just on its large-scale industries and foreign investments but also on its small and medium level industries that also includes various cottage industries operating in India. By looking towards the developing country like India whose economy is basically dependent on agriculture and small-scale industries, applying for MSME registration or SSI Registration could be considered as its backbone.\n\nIn India, every state has its own tradition and culture which they follow and become eminent in that kind of industry. No doubt that India is a country with its huge stock of natural resources with intense climate variations, so promoting and working in such type of industries on a very large scale is very common among the traders.\n\nSo Ultimately MSME Registration are a certification which is issued by respective state government department to avail to benefits under the MSME Act. Now from the 2015 government modified the MSME or SSI Registration and its has been changed into the Udyog Aadhar Registration.",
              title: "What is MSME Registration ?",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "MSME registration is really important for developing the transparency and accountability of the above-mentioned industries, Government of India has basically categorized these industries which is known as MSME- Micro, Small and Medium Enterprises. MSME is actually an authorized body that helps in promoting these industries throughout the country with the help of officially legalized Act. One of the unique advantage of MSME registration is that it authorizes numerous incentives and incentives to industries included under MSMED Act. In order to subscribe under MSME, a MSME registration procedure is mandatory. Apart from the enterprises as mentioned above, some firms, or shop registration or public and private limited companies, LLPs are also eligible to apply for registration under MSME to avail its benefits.",
              title: "Why MSME Registration are Important for Small Business ?",
            ),
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Classification under MSME Registration",
              subtitle:
                  "An industry owner before applying for the registration for MSME should know the requisites to classify his company and must file his application in that category only in order to avoid any cumbersome technicalities. As a result of this, Government of India has come up with a set of rules and regulations for the industries in order to classify them. The classification is mentioned below:",
              steps: {
                "Micro industries– In applying for registration of these kinds of industries your investment shall not exceed 25 lakhs for companies in the manufacturing sectors and 10 lakhs for the service sector.":
                    [],
                "Small industries– In small scale industries the investment shall not exceed 5 crores for companies in the manufacturing sectors and 2 crores for the service sector.":
                    [],
                "Medium industries– when applying for medium industries your investment shall not exceed 10 crores for companies in the manufacturing sectors and 5 crores for the service sector.":
                    [],
              },
            ),
            showBackgroundColor: true,
            showButton: true,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "MSME Registration Process :",
              subtitle:
                  "MSME Registration process is completely online but you have to require the professional to fill-up your application and getting approval from the department. MSMED Act is not compulsory for the companies but it is always suggested for them in order to have Government backing up their company. As a result, numerous medium and small-scale industries are stepping forward to register their company. The whole process of registration is given below:\nThe registration process simply requires you an application for the MSME registration that has to be prepared and submitted to the respective government office according to the latest rules and regulations.\nIn addition to it, one has to file its personal details of the kind of the industry they want to run and some of the respective documents as mentioned below:",
              steps: {
                "Your Aadhaar Number.": [],
                "Name of Applicant.": [],
                "Social Category.": [],
                "Gender": [],
                "Name of Enterprise / Business.": [],
                "Type of Organization you are opting for.": [],
                "Your PAN number.": [],
                "Location of Plant you are setting up in a place.": [],
                "Your current office Address.": [],
                "Mobile Number.": [],
                "Your E- Mail ID.": [],
                "Date of Commencement of Business.": [],
                "Your Bank Account Number.": [],
                "Bank IFS Code.": [],
                "Main Business Activity of Enterprise": [],
                "NIC 2 Digit Code.": [],
                "Additional details about Business.": [],
                "Number of employees": [],
                "Investment in Plant & Machinery / Equipment": [],
                "Attachment of your scan copy of Aadhaar card": [],
                "The usual time is between 2-3 days to complete all the documentation of the registration.":
                    [],
              },
              subtitle2:
                  "In spite of the fact that registration process is really hassle free, some industry owners still feels necessary to complete all the formalities in order to avoid any type of difficulties thereafter.",
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          AdvantagesSection(
            subtitle:
                "MSME Registration provides to you right to get avail benefits under the MSME Scheme of the government’s. ​One of the outstanding advantage of registration is that the Government will include your company or business in the the Central and State Government schemes so one must get the complete advantage of the schemes. It will lead into superior awareness about the much-arrived schemes and complete transparency of the government working process. Numerous benchmark benefits include simple ingress to various government subsidies and bank loans. Ability to apply for different Government’s beneficial schemes and clarity in various laws such as exercise, banking direct taxes and much more. Below are the some important MSME Scheme Benefits under the Registration :-",
            title: "Benefits under MSME Registration Online:",
            data: MsmeRegistrationData.advantages,
          ),
          AdvantagesSection(
            title: "Documents Required for the MSME Registration",
            data: MsmeRegistrationData.documentsRequired,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "MSME Registration is done online but each state have a separate DIC (District Industries Centre) department. these authorities approved the MSME Registration Certificate with the MSME Number. Even if you want to avail the scheme or benefits under the msme then you have to contact to your nearby DIC Department for the same.",
              title:
                  "Where MSME Registration has been registered with the government",
            ),
          ),
        ],
      ),
    );
  }
}
