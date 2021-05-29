import 'package:ca_website/models/dataWithDescription.dart';
import 'package:ca_website/models/dataWithSteps.dart';
import 'package:ca_website/reusable/gst_return_filing_data.dart';
import 'package:ca_website/widgets/advantages_section.dart';
import 'package:ca_website/widgets/book_consultancy.dart';
import 'package:ca_website/widgets/registration_fees.dart';
import 'package:ca_website/widgets/section_with_description_only.dart';
import 'package:ca_website/widgets/section_with_steps.dart';
import 'package:ca_website/widgets/top_section.dart';
import 'package:flutter/cupertino.dart';

import '../../main.dart';

class GstReturnFilingMainPage extends StatefulWidget {
  const GstReturnFilingMainPage({Key key}) : super(key: key);

  @override
  _GstReturnFilingMainPageState createState() =>
      _GstReturnFilingMainPageState();
}

class _GstReturnFilingMainPageState extends State<GstReturnFilingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight - 100,
      child: ListView(
        children: [
          TopSection(
            bigText: "Gst Return Filing Online",
            smallTextLine1:
                "#1 Portal to get done gst return filing at cheapest cost with simple 3 steps",
            smallTextLine2: "Package Start From Just Only 499/- Per Month",
            showButton: true,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "What is GST Return Filing ?",
              steps: {
                " Total Sales of the Month": [],
                "Total Output GST Tax": [],
                "Total Purchase of the Month": [],
                "Total Input GST Credit Tax": [],
              },
              subtitle:
                  "Every person who is applying for the GST Registration has to file GST return Filing. GST Return is mandatory for each person whose enroll under the GST Registration.There is a lot of the type of the GST Returns which you have to file the monthly basis with one annual return. A registered personal have to file the returns about the following things –",
              subtitle2:
                  "if you are registered under the GST Composition Scheme then there are the different rules for the same.",
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          RegistrationFeesSection(
            data: GstReturnFilingData.gstReturnFilingRegistrationFees,
          ),
          BookConsultancy(
            title: "Book Free Consultation Right Now",
            subtitle: "GST Return Filing Online",
            subtitle2: "100% Govt Certified with Registered 30k+ GSTIN",
            typeOfForm: "Gst Registration",
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "​GST Return Date : GST Return Filing Date",
              subtitle:
                  "Now let’s understand about the GST Return Filing Date. Basically, there are 3 type of the filing date –",
              steps: {
                "GSTR 3B – This is the mainly a GSTR Return filing summary where you have to provide the data of the sales and purchase for the same & make the tax payment. The due date depends on the aggregate turnover of the company. there are the 2 criteria for the same –":
                    [
                  "If your firm or business turnover is less than 1.5 Cr in a year",
                  "In this case GSTR3B always be filed on each month of 20th.",
                  "For ex – In the June 2018 month due date is 20th July 2018.",
                ],
                "GSTR 1 – This is also called the sales returns for the same because you have to provide your all the sales details in this return. you have to mention each dealer B2B details with their GSTIN Number. so in this return, all the outward supplier details are mentioned.\n\nThe due date for the GSTR 1 always should be the quarterly basis when your aggregator turnover is less than 1.5 Cr.\n\nGSTR1 due date –":
                    [
                  "For-ex – April to June 2018 – Due date will be 31st July 2018",
                  "if your aggregator turnover is more than 1.5 Cr then you have to file the monthly basis.",
                  "For ex -June 18 Month – You have to file in the July 2018 before the 10th.",
                ],
                "GSTR 2 – It’s an auto-populate return where all the input tax credit details have been mentioned. All the purchase details also has been mentioned into the GSTR 2. Still, GSTR 2 not practically to file so you have to wait for the same.":
                    [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "How to File GST Return",
              steps: {
                "Login with your user id and password on the GST Portal for gst e filing.":
                    [],
                "Just proceed with the GSTR-3B Return tab and insert your sales amount with the tax & purchase amount with the input credit.":
                    [],
                "Just make the payment of the GST by creating the challan & submit the gst e filing.":
                    [],
              },
              subtitle:
                  "GST Return Filing is an online procedure; if you have the GST Software, then it will be easy for you to file GST Return. Even GST Portal issued an offline excel utility which is very easy to file the GST Returns. but you need the knowledge about the returns for the same.\n\nSo below are the simplified steps to file your GSTR Returns –",
              subtitle2:
                  "Note – In the GSTR 1 you have to upload each invoice details for the same.",
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "GST Return Filing Procedure",
              steps: {
                "Download the MyOnlineCA Simplified Excel Template": [
                  "Every registered person has to upload the invoice on GST portal so for that you have to required to maintain the invoice records electronically. We build a simplified excel template where you can maintain your invoice records easily.",
                ],
                "Email to MyOnlineCA GST Experts ": [
                  "Once you prepare your data then you can email to MyOnlineCA GST Experts which review your all the data entries and prepare GSTR1,2 and 3 & maintain your gst compliance at your fingertips.",
                ],
                "Fiilng of the GSTR1,2 and 3 or GSTR3B ": [
                  "once your data has been finalized then our GST Expert file your GSTR Returns with the proper challan & generated the ARN Number for the same."
                ],
              },
              subtitle:
                  "We at MyOnlineCA build a simplified excel sheet where you have to just maintain your invoice records basic details, at the end of the month you can file your returns through our GST Experts assistance plan.\n\nThere are main overall three steps in gst return filing procedure:",
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "There are lot of the good GST Software in the market which cost from 5000 to 10000 or more per annum but it’s expensive for the small business whose don’t have knowledge about the GST Returns and Accounts. Even Small business have to hire the accountant for the data entry. Instead of the expensive software, you can use myonlineca gst assistant plan where you have to maintain your records in simplified excel sheet and file the returns.",
              title: "All about GST Software",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "​You can make the payment of the GST via online net banking or NEFT Transfer or Echallan for the same in the banks. You have to just generate the challan through your dashboard then you can make the GST Payment.\n\nSo you have to require an online internet banking account for the GST Payments. if we talk about the GST Payment Due dates. then during the filing of the GSTR3B you have to make the payment in advance on a monthly basis.",
              title: "Gst Payment Due Date",
            ),
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Documents Required for the GST Return Filing",
              steps: {
                "Prepare each invoice as per the GST Law.": [],
                "Maintain records online or offline as bookkeeping.": [],
                "Try to maintain records in your GST Filing software or else use our simplified excel sheets.":
                    [],
              },
              subtitle:
                  "GST Return filing have no proper set of the documents. Its required the mainly the sales invoice of taxable services or goods. So for the GST Return filing you have to follow some standard guidelines –",
            ),
            showButton: false,
            showBackgroundColor: false,
          ),
          AdvantagesSection(
            title: "Type of GST Return Forms",
            data: GstReturnFilingData.gstReturnForms,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "GSTR-3B (Jun 2018)\nJul 20th, 2018\n\nGSTR-5 (Jun 2018)\nJul 20th, 2018\n\nGSTR-6 (Jul’17 – Jun’18)\nJul 31st, 2018\n\n"
                  "GSTR-4 (Apr-Jun, 2018)\nJul 18th, 2018\n\nGSTR-5A (Jun 2018)\nJul 20th, 2018\n\nGST TRAN-2\nJun 30th, 2018\n\n"
                  "RFD-10\nEighteen months after end of the quarter for which refund is to be claimed\n\n"
                  "Quarterly return for registered persons with aggregate turnover up to Rs. 1.50 Crores\n\n"
                  "GSTR-1 (Apr-Jun, 2018)\nJul 31st, 2018\n\n"
                  "Turnover exceeding Rs. 1.5 Crores or opted to file monthly Return\n\n"
                  "GSTR-1 (Jun 2018)\nJul 10th, 2018\nGSTR-1 (May 2018)\nJun 10th, 2018",
              title: "Important Current gst return filing dates",
            ),
          ),
        ],
      ),
    );
  }
}
