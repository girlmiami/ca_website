import 'package:ca_website/models/dataWithDescription.dart';
import 'package:ca_website/models/dataWithSteps.dart';
import 'package:ca_website/widgets/book_consultancy.dart';
import 'package:ca_website/widgets/section_with_description_only.dart';
import 'package:ca_website/widgets/section_with_steps.dart';
import 'package:ca_website/widgets/top_section.dart';
import 'package:flutter/cupertino.dart';

import '../../main.dart';

class LlpFilingMainPage extends StatefulWidget {
  const LlpFilingMainPage({Key key}) : super(key: key);

  @override
  _LlpFilingMainPageState createState() => _LlpFilingMainPageState();
}

class _LlpFilingMainPageState extends State<LlpFilingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight - 100,
      width: screenWidth,
      child: ListView(
        children: [
          TopSection(
            bigText: "LLP Annual Filings Online",
            smallTextLine1: "#1 Portal to Get done your LLP Annual Compliance",
            smallTextLine2:
                "Package Start Only From 3999/- INR ( Lowest LLP Annual Filings Fee)",
            showButton: true,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "What is LLP Annual Filings?",
              subtitle:
                  "Now Every LLP which are already registered with the Ministry of Corporate Affairs have to file the Annual Returns and Statement of Accounts for the Financial Year 2019.",
              steps: {
                "So There are 3 Main Compliance which is mandatory things for the LLP’s of the Year 2019–":
                    [
                  "Annual Return",
                  "Statement of the Accounts or you can say Financial Statements of the LLP",
                  "Income Tax Returns Filings.",
                ],
              },
              subtitle2:
                  "So Now Most of the Entrepreneurs in India or startups are confused that filings of the Annual Returns are a mandatory thing even if they are doing the business or not?\n\n​then answer is yes, Every LLP has to maintain the compliance even if they are doing the business or not. the reason is simple you know that you are not doing the business but government of India doesn’t know that. so through the annual statements or filings, you are giving information to the government about your organization.\n\nSo Let’s understand which LLP’s have to File the Annual Returns and Income Tax Return for the year 2019",
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "LLP Annual Filings Fees",
              steps: {
                "Pricing : 3999/- INR (LLP Nil Annual Filings)": [
                  "Best if have NIL Business Transaction",
                  "Preparations of the Financial Statements by CA",
                  "Form 11 & Form 8 Filings",
                  "Income Tax Return of LLP",
                ],
                "Pricing : 6999/- INR (LLP Transaction Package)": [
                  "Best if have business transaction till the 25 Lakh",
                  "Preparations of the Financial Statements by CA",
                  "Form 11 & Form 8 Filings",
                  "Income Tax Return of LLP",
                ],
              },
            ),
            showBackgroundColor: true,
            showButton: true,
          ),
          BookConsultancy(
            title: "Book Free Consultation Right Now",
            subtitle: "LLP Annual Filings Request",
            subtitle2: "Fill-Up Below Details to Get Started your LLP Filings",
            typeOfForm: "Gst Registration",
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "Annual Returns or you can say Form 11 is a Summary of LLP’s Partners like whether there are any changes in the management of the LLP. Every LLP is required to file Annual Return in Form 11 to the Registrar within 60 days from the closure of financial year i.e the Annual Returns has to be filed on or before 30th May every year. i.e 30-05-2019 is the last date for filing annual Returns this year.\n\nNote -Form 11 or Annual Return is Applicable on those LLP which is registered until the 30-09-2018. if you LLP is registered after the 01-10-2018 then you have to file LLP Annual Returns in the year 2020.",
              title: "Filing Annual Return :-",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "​Every LLP or any other legal entity from Solo firm to the Private limited company have to prepare their accounts so even you got the information regarding your business that how much profit is earned by your llp. Every LLP have to close their accounts until the 31st March 2019 on this year. There is a lot of software from wave apps to simple spreadsheets where you can maintain the accounts. All LLPs are required to maintain the Books of Accounts in Double Entry System and has to prepare a Statement of Solvency (Accounts) every year ending on 31st March. LLP Form 8 to be filed with the Registrar of LLPs on or before 30th October every year. i.e 30-10-2019 is the last date for filing annual accounts this year.\n\n​Note -Form 8 or Annual Statements is Applicable on those LLP which is registered until the 30-09-2018. if you LLP is registered after the 01-10-2018 then you have to file LLP Annual Statements in the year 2020.",
              title:
                  "Filing Annual Accounts or Statement of Accounts or P&L and Balance Sheet :-",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "Every LLP has to file the Income Tax Returns for the year 2019. In simple words LLP is a separate legal entity so with the partner’s income tax return you have to always file the LLP Income tax return is a form where you show your LLP Income and calculate the tax liability & pay the taxes to the government of India.LLP have to calculate their tax liability from their financial statements for the year 2019.\n\nMostly Income Tax Return the Last date is 31st July 2019 in this year for the Individual and legal entities.\n\nbut In the case where Audit is required, the last date for filing Income Tax returns is 30th September 2019.\nIf the LLP has not carried any business during the year ended 31.03.2019, the LLP has to file a NIL IT RETURN with Income Tax Authorities.\n\nNote -Filing of Income Tax Return is Applicable on all the LLP’s which are registered until the 30-09-2018. So it’s not a matter if you LLP is registered after the 01-10-2018 still you have to file Income tax return from 01-10-2018 to 31-03-2019.",
              title: "Filing Income Tax Returns of the LLP :-",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
                title: "Audit Requirement under LLP Act :-",
                description:
                    "​Only those LLP whose annual turnover exceeds Rs. 40 lakhs or whose contribution exceeds Rs. 25 lakhs are required to get their accounts audited by a qualified Chartered Accountant. means you’re all the statements are certified by the CA.\n\nAudit requirement under Income Tax Act:\n\nAudit of accounts is a mandatory requirement under Income Tax Act when the annual turnover of LLP is more than one hundred lakhs rupees."),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "Certifications from PCS :",
              description:
                  "In case of LLPs with turnover more than five crore rupees in a financial year or contribution more than fifty lakh rupees, the annual return shall be certified by a Company Secretary in Practice.",
            ),
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "LLP Annual Filing Due Date :",
              steps: {
                "REGISTRAR OF LLP Last date for filing": [
                  "Annual Return (Form 11) 30-05-2019",
                  "Accounts (Form 8) 30-10-2019",
                ],
                "INCOME TAX RETURN": [
                  "In case Audit is not required 31-07-2019",
                  "In Case Audit is required 30-09-2019",
                ],
                "DSC Requirements": [
                  "While uploading e-forms Digital Signatures of any 2 Designated Partners are required for filings.",
                ],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "Penalty for Non-Filing :-",
              description:
                  "​If there is a delay in filing form no.8 and 11 of LLP, you will have to pay penalty as applicable on today’s date. If the filing is not done within stipulated time, there is a penalty of Rs. 100 per day till it complies. You cannot close or wind up your LLP without filing Annual Accounts.\n\nSo if you don’t file on time, your LLP turns into unlimited statutory liability till the day it complies.\n\nThe provisions of the Act require LLPs to file the documents like Statement of Account and Solvency (SAS) and Annual Return (AR) ie. Form 8 and Form 11. within the time specifically indicated in relevant provisions.\n\nThe LLP Act contains provisions for compounding of offenses which are punishable with fine only.\nFurther, for defaults/non-compliance on procedural matters such as time limits for filing requirements provisions have been made for charging default fees (on daily basis) in a non-discretionary manner.\nTO avoid all the dangerous consequences of heavy penalty, it would be advisable to comply on time within stipulated due date of filing.",
            ),
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Important Points on LLP Annual Compliance",
              steps: {
                "If you are thinking about the Filings yourself then we suggest you must hire a legal professional because during the filings you need an attestation from the professionals and it’s not easy to file and save your taxes because it’s a need planning.":
                    [],
                "if you’re LLP are not doing the business even till the date you are not open a current bank account then must file the NIL Returns else liability and penalties will arise and in the future, you can’t close your LLP easily.":
                    [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
        ],
      ),
    );
  }
}
