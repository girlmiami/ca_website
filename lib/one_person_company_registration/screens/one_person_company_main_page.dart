import 'package:ca_website/models/dataWithDescription.dart';
import 'package:ca_website/models/dataWithSteps.dart';
import 'package:ca_website/reusable/one_person_company_data.dart';
import 'package:ca_website/widgets/book_consultancy.dart';
import 'package:ca_website/widgets/document_required_section.dart';
import 'package:ca_website/widgets/faq_section.dart';
import 'package:ca_website/widgets/registration_fees.dart';
import 'package:ca_website/widgets/section_with_description_only.dart';
import 'package:ca_website/widgets/section_with_steps.dart';
import 'package:ca_website/widgets/top_section.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class OnePersonCompanyRegistrationMainPage extends StatefulWidget {
  @override
  _OnePersonCompanyRegistrationMainPageState createState() =>
      _OnePersonCompanyRegistrationMainPageState();
}

class _OnePersonCompanyRegistrationMainPageState
    extends State<OnePersonCompanyRegistrationMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight - 100,
      child: ListView(
        children: [
          TopSection(
            bigText: "One Person Company Registration",
            smallTextLine1:
                "India’s No #1 Company to Get Done One Person Company Registration",
            smallTextLine2:
                "Package Start From Just 9999/-INR Only ( All Inclusive)",
            showButton: true,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "What is One Person Company Meaning ?",
              description:
                  "One person company as a company which has only one person as a member. This paradigm shifts from the Companies Act 1956, where minimum two members are required float private limited company as well as public company.\n\nFor the 1st time the concept of One Man Company or OPC has been introduced in India under Companies Act 2013 and the intent is apparently to permit entrepreneurship of a single individual to obtain the benefit of a corporate form of organization. This concept has opened huge business opportunities for small entrepreneurs.\n\nA single individual forms a company satisfying all the legal requirements of the law for a definite purpose, usually for profit making. It has only one person as a member who will be promoter and director of the company. Hence it is a single shareholder corporate entity, where legal and financial liability is limited to the company only",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "What is LLP Registration",
              description:
                  "LLP Registration is a standard Process where 2 LLP Partners create a LLP Incorporation Entity with the limited liability and open a current bank account on the LLP Name & Start the business. Here partners have to pay the Government Fee & Professional Fee for the same.",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "What is One Person Company Registration ?",
              description:
                  "Under companies act 1956 minimum two members were required for the formation of Private Limited Company Registration. This was a hindrance to entrepreneurs who wanted to go solo or do business alone. So, the only option available was sole proprietorship firm. The major problem with doing business as a sole proprietorship firm is that it does not have a separate legal entity and has unlimited liability. OPC is a legitimate way to form a company with only one member. It can work like proprietorship, but it holds the status of the company and of course, it enjoys the benefit that comes with it i.e. limited liability. Although an OPC comes under a private company, it has been given many exemptions and thus has a comparatively lesser compliance burden.\nThe Minimum number of directors is limited to one and only one director can sign the financial statement and the Board’s report",
            ),
          ),
          RegistrationFeesSection(
            data: OnePersonCompanyData.onePersonRegistrationFees,
          ),
          BookConsultancy(
            title: "Book Free Consultation Right Now",
            subtitle: "Company Registration in India",
            subtitle2: "100% Govt Certified Platform with 1 lakh+companies",
            typeOfForm: "One Person Company Registration",
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "What is OPC Registration Govt Cost ?",
              description:
                  "​​In case of OPC having nominal share capital more than Rs. 10,00,000 fees of Rs. 2000 and Rs. 200 for every 10,000 of nominal share capital after first 10,00,000 to Rs. 50,00,000. The registration of OPC generally takes 20-30 days approximately and after registration, you receive a certificate of incorporation of OPC. ​",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "OPC Stand’s For ?",
              description:
                  "OPC Definition stands for One Person Company, as you can in above paras that one person company is a company which is incorporated by one person. OPC is a short name for One Person Company so don’t get confused with them.",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "OPC Stand’s For ?",
              description:
                  "OPC Definition stands for One Person Company, as you can in above paras that one person company is a company which is incorporated by one person. OPC is a short name for One Person Company so don’t get confused with them.",
            ),
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title:
                  "Minimum Requirements for One Person Company Registration?",
              steps: {
                "Minimum 1 shareholder": [],
                "Minimum 1 director (director and shareholder can be same person)": [
                ],
                "Minimum 1 nominee": [],
                "Shareholder/nominee to be Indian resident": [],
                "Minimum authorized share capitals. 1 lakh": [],
                "Digital signature certificate for director": [],
                "Director identification number for the director": [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Nomination in case of One Person Company",
              steps: {
                "The memorandum of OPC shall indicate the name of the other person who has given his consent in the prescribed form to be so named and who shall, in the event of the member becoming incapacitated due to death or incapacity to contract, become the member of the company.": [],
                "The written consent of such other person shall also be filed along with the incorporation documents while forming OPC.": [],
                "The memorandum of the company shall state the name of the person who in the event of the death of the subscriber shall become a member of the company.": [],
                "The member has powers at any time to change the name of the nominee by giving notice in the prescribed form.": [],
                "The new nominee should also give his consent to his name so appearing and any change in the nominee shall require amendment in the memorandum of association.": [],
                "He must be a natural person Indian citizen resident in India and not a minor": [],
              },
              subtitle2:
                  "A nominee can withdraw his nomination by giving his consent to the member and the OPC. In that case, the member shall nominate another person within 15 days of the notice of withdrawal after obtaining his written consent and send intimation of such nomination to the company. The OPC is required to file the notice of withdrawal of consent and fresh nomination within a period of 30 days from the notice of withdrawal",
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          DocumentRequiredSection(
            title: "Documents Required for OPC Registration",
            data: OnePersonCompanyData.documentRequired,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "One Person Company (OPC) Registration Process",
              subtitle:
                  "​The process of incorporation of a one-person company is a very simple one.",
              steps: {
                "First the sole shareholder shall get a Director Identification Number (DIN) as well as a digital signature certificate.": [],
                "Then he should apply for the name of the company": [],
                "After that he should get the consent of the nominee in the prescribed forms.": [],
                "Then he shall file the consent along with the final incorporation forms with the Memorandum and Articles and other required documents": [],
                "After that he shall receive the final incorporation certificate from the register of companies. Now he can commence business under the name.": [],
                "Apply for the PAN Number and open a current bank account on the name of one person company.": [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Advantages of One Person Company Registration",
              subtitle: "Features of One Person Company are:",
              steps: {
                "there shall be only one member.": [],
                "It is run by individual yet OPCs are a separate legal entity like that of any registered corporate.": [],
                "A One Person Company is incorporated as a private limited company.": [],
                "It must have only one member at any point of time and may have only one director.": [],
                "The member and nominee should be natural persons, Indian Citizens and resident in India.": [],
                "One person cannot incorporate more than one OPC or become a nominee in more than one OPC.": [],
                "OPC to lose its status if paid up capital exceeds Rs. 50 lakhs or average annual turnover is more than 2 crores in three immediately preceding consecutive years.": [],
                "No minor shall become member or nominee of the One Person Company or hold share with beneficial interest.": [],
              },
              subtitle2:
                  "For the more details regarding the advantages of One Person Company Checkout Here",
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "How to Choose Name in One Person Company Registration?",
              description:
                  "​As you can in the above article that you can choose a name for your one person company during its registration by way of filing an incorporation form or you can take service of WEB-RUN services available on the website of Ministry of corporate affairs. Here is the guide on One Person Company Name Example.",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "Timeline for OPC Registration",
              description:
                  "One Person Company takes minimum 10-15 days of the Incorporation. Its a general timeline for the OPC Registration in India.",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "What are the tax rate in case of One Person Company ?",
              description:
                  "Income Tax act, 1961 does not provide any special recognition of OPC and is considers as a private company for the purposes of taxation. Thus, under the tax rate slab, OPC’s income is taxed at 30% of its total income in financial year. This is somewhat higher than the tax slab rate for individuals which is 10% to 30% of the income depending upon the income of such individual.",
            ),
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "What is annual compliance for One Person Company ?",
              steps: {
                "Form AOC-4 for financial statement": [],
                "MGT-7 for an annual return": [],
                "Meeting of board at least twice in a year": [],
              },
              subtitle2:
                  "for the more details on the Compliance you can check here about Annual Compliance for One Person Company",
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          FaqSection(
            title: "FAQ on One Person Company",
            data: OnePersonCompanyData.faqQuestions,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "It can encourage business venture and makes better use of market resources. This new concept may lead to people forming companies to generate profits themselves leaving the liability to the company and washing their hands of any liability.\n\nThough the one-person company will help a lot of individual entrepreneurs who want to open their own firm, it certainly has some loopholes. To implement it fully and beneficially we must correct the law and implement it. The silver lining of OPC, however, is that most restrictive clauses exist not in the Companies Act but the Rules, allowing for the possibility of quick amendments from the government.\n\nIn simple, it is just a characteristic attached to sole proprietorship business by registering it to search for better market, economic and management opportunities despite many disadvantages",
              title: "CONCLUSION on One Person Company",
            ),
          ),
        ],
      ),
    );
  }
}
