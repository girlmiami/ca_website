import 'package:ca_website/models/dataWithDescription.dart';
import 'package:ca_website/models/dataWithSteps.dart';
import 'package:ca_website/reusable/company_annual_filing_data.dart';
import 'package:ca_website/widgets/advantages_section.dart';
import 'package:ca_website/widgets/book_consultancy.dart';
import 'package:ca_website/widgets/section_with_description_only.dart';
import 'package:ca_website/widgets/section_with_steps.dart';
import 'package:ca_website/widgets/top_section.dart';
import 'package:flutter/cupertino.dart';

import '../../main.dart';

class CompanyAnnualFilingMainPage extends StatefulWidget {
  const CompanyAnnualFilingMainPage({Key key}) : super(key: key);

  @override
  _CompanyAnnualFilingMainPageState createState() =>
      _CompanyAnnualFilingMainPageState();
}

class _CompanyAnnualFilingMainPageState
    extends State<CompanyAnnualFilingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight - 100,
      width: screenWidth,
      child: ListView(
        children: [
          TopSection(
            bigText: "Get Done ROC Filing and ROC Compliance",
            smallTextLine1:
                "ROC Filing and ROC Compliance with Annual Return Filing Online with Lowest Fee For Small Business with Govt Startup India\nCertified Portal MyOnlineCA",
            smallTextLine2:
                "Package Start Just Only 9999/- INR (All Inclusive)",
            showButton: true,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "Registrar of Companies (ROC) is the official office manages direction and administration of a wide range of Companies secured under the Companies Act 1956 and Companies Act 2013 in India. It’s the obligation of the ROC to guarantee that companies are appropriately enrolled, and that, when enlisted, they record accounts and other data accurately. The office of ROC work as a registry of records, identifying with the companies enlisted with them, which are accessible for assessment by individuals from open on instalment of the endorsed charge.",
              title: "What Is The Full Form of ROC ?",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "​As per The Companies Act, there are sure compliances that are to be documented by the Private Limited Company or any Company besides. These ROC compliances significantly incorporate Annual filing. Notwithstanding, annual return draft, revelation by Directors and refreshing the Statutory Register are additionally incorporated into these ROC compliances. ROC compliances are essential. Any slack can prompt punishments and other lawful issues relating to the Company. There are sure forms that are to be recorded alongside indicated documents and returns. Service Of Corporate Affairs enables you to record these forms online moreover.",
              title: "What is ROC Filing Compliance ?",
            ),
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "ROC Filing Package Pricing",
              subtitle: "For Nil Transactions & No turnover – Rs. 10,000/-\n"
                  "For Transactions (like Expenses) But No turnover – Rs. 13,000/-\n"
                  "For Turnover Upto the Limit of Rs. 10 lacs – Rs. 17,000/- \n",
              steps: {
                "Package Includes –": [
                  "Preparation of your Company Financial Statements.",
                  "Preparation of your Company All the Reports.",
                  "Appointment of the Auditor.",
                  "Certification from the Auditor.",
                  "Filings with the Registrar of Companies.",
                  "Prepare your Company Income Tax Returns & Filings.",
                ],
              },
            ),
            showBackgroundColor: true,
            showButton: true,
          ),
          BookConsultancy(
            title: "Book Free Consultation Right Now",
            subtitle: "Compliance for Pvt Ltd Company",
            subtitle2: "100% Govt Certified with 50k+ Companies",
            typeOfForm: "Gst Registration",
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "Annual compliance filing are required filings done by filing certain forms. They are done annually and are done under the direction of The Companies Act, 2013. They are important and can’t be skipped. They are general filings and all the money related records ought to be kept up deliberately with a specific end goal to document precise annual returns. All filings ought to be finished by the given date so as to evade fines. Enormous companies for the most part, delegate examiners to document their annual returns. Legitimate counsel is suggested. Monetary accounting is suggested. The accounting ought to be finished with most extreme exactness. You can learn more about here Annual Compliance for Private Limited Company",
              title: "Annual Compliance Filing ?",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "The Different types of Roc Annual Filing Forms are as follows :",
              title: "What are ROC Filing Forms ?",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "within 30 days from the date of the Annual General Meeting, A copy of Balance Sheet is to be recorded with ROC.Where an annual general meeting (AGM) isn’t held, duplicate of balance sheet/benefit and misfortune account is to be e-documented inside 30 days from the most recent day at the latest which the meeting ought to have been held and an announcement of the reality and of the reasons thereof will must be recorded alongside the balance sheet.\n\nWhere balance sheet is laid previously however not received at the AGM or the AGM was deferred without embracing the balance sheet, an announcement of the reality and reasons thereof must be documented alongside the balance sheet, and so forth inside 30 long periods of the AGM.",
              title:
                  "Form 23AC (Balance Sheet) & Form 23ACA (Profit & Loss Account)",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "​Annual Return form should be recorded with the ROC in an electronic mode inside 60 days from the date of holding the annual general meeting.Where annual general meeting has not been held, the return is required to be documented inside 60 days from the date on which the annual general meeting ought to have been held\n\nAccording to sec 161, the return is to be appropriately marked carefully and the imperative testaments to be joined.If there should be an occurrence of a company whose offers are recorded on a perceived stock trade; the return is to be likewise marked carefully by a secretary in entire time rehearse.",
              title: "Form 20B OR Form 21A (Annual Returns)",
            ),
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Form 66 (Compliance Certificate)",
              subtitle:
                  "Certain companies whose paid up share capital for the year in the scope of Rs. 10 lakhs to 50 crores are required to record a Compliance Certificate in Form 66 with the accompanying provisions:",
              steps: {
                "The companies having paid up capital of more than Rs. 10lacs, needs to carefully record with the ROC a compliance declaration which is gotten from a Company Secretaries in entire time Practice inside 30 days from the date of annual general meeting, alongside the Annual Report":
                    [],
                "In the event that the Annual General Meeting of the company isn’t held for that year, the previously mentioned Compliance Certificate to be carefully documented with the ROC inside 30 days from the most recent day at the latest which that meeting ought to have been held.":
                    [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "What is Annual Return Filing of Company ?",
              description:
                  "​All companies enrolled in India must get ready and document with the Registrar of Companies, an annual return in roc annual filing forms MGT 7, inside 60 days from the date of annual general meeting. The Roc annual return of a company can be documented with the computerized mark of the Director of the Company and the advanced mark of the Chartered Accountant reviewing the company. In the event of annual return filing by a recorded company or a company having paid-up share capital of ten crore rupees or progressively or turnover of fifty crore rupees or more, the annual return must be confirmed by a Company Secretary by and by in Roc Annual Filing Forms No. MGT 8.",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "What is ROC Filing Due Date ?",
              description:
                  "​30Th October is the ROC Return Filing Due Date for all companies.",
            ),
          ),
          AdvantagesSection(
            data: CompanyAnnualFilingData.procedure,
            subtitle: "Now Let’s Learn about ROC Filing Procedure",
            title: "ROC Filing Procedure",
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "How to Get Done Annual Filing of Company ?",
              description:
                  "​You can Visit our website and Can Fill Up a Simple registration form On our website And when you are done with Filling up a form , our executive will contact you as soon as possible and will ask for Documents and Information. You need to Send Documents and information via email and your Work will be done.",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "Who’s are responsible to file Company ROC Return ?",
              description:
                  "​It is Duty of Director To make sure that Company ROC Return are filed on time with registrar of companies.",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "What are ROC Return Filing Fees and Cost ?",
              description:
                  "​The government fees for Roc return Filing is rs 200. The Professional fee for roc return Filing That is Levied by CA, CS and ICWA Firm varies from Firm to Firm.",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "What is Penalty for Late Filing of Company ROC Return ?",
              description:
                  "As a Penalty for Late Filing of Company ROC Return, an additional Fee of rs 100 per day will be chargeable for Late filing.",
            ),
          ),
        ],
      ),
    );
  }
}
