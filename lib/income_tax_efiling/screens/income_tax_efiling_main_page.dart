import 'package:ca_website/models/dataWithDescription.dart';
import 'package:ca_website/models/dataWithSteps.dart';
import 'package:ca_website/reusable/income_tax_data.dart';
import 'package:ca_website/reusable/iso_certification_data.dart';
import 'package:ca_website/widgets/advantages_section.dart';
import 'package:ca_website/widgets/book_consultancy.dart';
import 'package:ca_website/widgets/faq_section.dart';
import 'package:ca_website/widgets/registration_fees.dart';
import 'package:ca_website/widgets/section_with_description_only.dart';
import 'package:ca_website/widgets/section_with_steps.dart';
import 'package:ca_website/widgets/top_section.dart';
import 'package:flutter/cupertino.dart';

import '../../main.dart';

class IncomeTaxEFilingMainPage extends StatefulWidget {
  const IncomeTaxEFilingMainPage({Key key}) : super(key: key);

  @override
  _IncomeTaxEFilingMainPageState createState() =>
      _IncomeTaxEFilingMainPageState();
}

class _IncomeTaxEFilingMainPageState extends State<IncomeTaxEFilingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight - 100,
      child: ListView(
        children: [
          TopSection(
            bigText: "Income Tax eFiling",
            smallTextLine1:
                "Get Done Income Tax eFiling Return Online at your Fingertips. Package Start Only From 499/- INR",
            smallTextLine2: "",
            showButton: true,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "In India, there are two types of taxes one is direct tax which is directly levied upon the income of the individual and another is indirect tax which is levied indirectly upon an individual. Example of direct tax is income tax and of indirect tax is Goods and Services Tax, service tax etc.\n\nEvery individual who receives income in India is subject to income tax under the Income Tax Act, 1961. Under Income Tax Act there can be income from 5 different heads which are Income from salary, house property, capital gains, business and profession and other sources.Income of individuals, Hindu undivided family, association of person, body of individuals firms and companies are taxed under the Income tax act.",
              title: "Introduction on Income Tax",
            ),
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "Income Tax Return is a form in which the taxpayer whether it be an individual or firm or Hindu undivided family, discloses details of its income, claims exemptions and deductions which are applicable on it and the amount of tax payable on such income. The Income Tax Return also reflects the amount of taxes paid by the taxpayer.\n\nIncome tax return is form in which the taxpayer files data and information regarding his income and tax payable thereon at the end of every financial year.",
              title: "What is Income Tax Return",
            ),
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "What is Income Tax eFiling",
              subtitle:
                  "Income Tax can be filed by the two way i.e is the Online Method and another offline Method. Now as per the Government Instructions all the income tax return will be filed only through ITR eFiling Method.",
              steps: {
                "So in the following cases, ITR Online eFiling is Mandatory –":
                    [
                  "if your taxable income is more than 5 lakh rupees in a year or if you want to claim any refund.",
                  "if your accounts will required auditing under section 44 AB and Return would be furnished in ITR 3 or ITR 4",
                ],
                "Only these person can use the offline ITR Filing Method –": [
                  "if your taxable income is less than 5 lakh rupees in the year and not required to claim any refund.",
                  "An individual who’s age 80 years or more during the filing of Income Tax Return.",
                ],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Income Tax Return Filing Fee",
              steps: {
                "Salary ITR Return Package :  499/- INR ( All Inclusive)\nInclude :":
                    [
                  "Income Tax Consultancy by Professional",
                  "Preparation and Filing of Income Tax Return",
                ],
                "Business ITR Return Package :  999/- INR ( All Inclusive)\nInclude :":
                    [
                  "Income Tax Consultancy by Professional",
                  "Preparation and Filing of Income Tax Return",
                ],
              },
            ),
            showBackgroundColor: true,
            showButton: true,
          ),
          BookConsultancy(
            title: "Book Free Consultation Right Now",
            subtitle: "Income Tax Return Filing",
            subtitle2: "Fill up Below Form and Let's Start",
            typeOfForm: "Gst Registration",
          ),
          FaqSection(
            title: "Type of Income Tax Return Form",
            data: IncomeTaxData.typeOfIncomeTaxReturnForm,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "The due date of E-filling of income tax returns depends upon the taxpayer. If the taxpayer is individual, body of individuals, association of persons, Hindu undivided family then the due date for filling income tax return is August 31 every financial year. However, for business and companies which require audit the date for filling income tax return is September 30 every financial year. For any person who is required to furnish report in form No. 32CEB under section 92E the date for filling income tax return is November 30 every financial year. If the taxpayer does not file the income tax return in time, then he will have to pay the late fee along with the tax payable.",
              title: "Income Tax E-filing Due Date",
            ),
          ),
          AdvantagesSection(
            title:
                "What are the Benefits or Advantages of Income Tax Return Filing?",
            subtitle:
                "There are various advantages of filling an Income Tax Return which are as follows:",
            data: IncomeTaxData.advantages,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "What is Income Tax Slabs for the Financial Year 2018-19",
              subtitle:
                  "The tax slabs are different on the basis of the tax payer like individual, senior citizen, company etc.",
              steps: {
                "Tax Slab for Individuals and Hindu undivided family": [
                  "Income                               –    Upto Rs. 2,50,000",
                  "Rate of Tax                         –   No Tax\n",
                  "Income                                 –   Rs 2,50,000 to Rs 5,00,000",
                  "Rate of Tax                           –    5%",
                  "Health & education cess  –  4% of income tax\n",
                  "Income                                  –  Rs 5,00,000 to Rs. 10,00,000",
                  "Rate of Tax                            – 20%",
                  "Health & education cess   – 4% of income tax\n",
                  "Income                                   –  More than Rs. 10,00,000",
                  "Rate of Tax                             – 30%",
                  "Health & education cess     – 4% of income tax",
                ],
                "For Senior Citizen (age above 60 years and below 80 years)": [
                  "Income                               –    Upto Rs 3,00,000",
                  "Rate of Tax                         –   No Tax\n",
                  "Income                                 –   Rs 3,00,000 – Rs 5,00,000",
                  "Rate of Tax                           –    5%",
                  "Health & education cess  –  4% of income tax\n",
                  "Income                                  –  Rs 5,00,000 – 10,00,000",
                  "Rate of Tax                            – 20%",
                  "Health & education cess   – 4% of income tax\n",
                  "Income                                   –  More than Rs. 10,00,000",
                  "Rate of Tax                             – 30%",
                  "Health & education cess     – 4% of income tax",
                ],
                "For Senior Citizen (age above 80 years)": [
                  "Income                               –    Upto Rs 5,00,000",
                  "Rate of Tax                         –   No Tax\n",
                  "Income                                 –   Rs 5,00,000 – 10,00,000",
                  "Rate of Tax                           –    20%",
                  "Health & education cess  –  4% of income tax\n",
                  "Income                                   –  More than Rs. 10,00,000",
                  "Rate of Tax                            – 30%",
                  "Health & education cess   – 4% of income tax",
                ],
                "For Domestic Companies": [
                  "Income                               –    Gross turnover upto 250 Cr",
                  "Rate of Tax                         –   25%\n",
                  "Income                               –    Gross turnover exceeding 250 Cr.",
                  "Rate of Tax                         –   29%",
                ],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Who can file online income tax return",
              subtitle:
                  "Following of the taxpayers can file online income tax return:",
              steps: {
                "Taxpayers having total income of Rs. 5 lakh and above": [],
                "Individual or Hindu undivided family resident with assets located outside India.":
                    [],
                "Taxpayer who is required to furnish a report of audit specified under sections 10(23C) (IV), 10(23C) (v), 10(23C) (VI), 10(23C) (via), 10A, 12A (1) (b), 44AB, 80IA, 80IB, 80IC, 80ID, 80JJAA, 80LA, 92E or 115JB of the income tax act.":
                    [],
                "Firm (not under provisions of Section 44AB), association of person, body of individual, artificial juridical person, cooperative society and local authority.":
                    [],
                "Taxpayer who is required to furnish return under section 139 (4B) of the income tax return":
                    [],
                "Resident who has a signing authority in any account located outside India.":
                    [],
                "Taxpayer claiming relief under section 90 or 90A or deductions under section 91.":
                    [],
                "All companies.": [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Documents Required for Income Tax eFiling",
              steps: {
                "PAN Card Registration": [],
                "Aadhar Number": [],
                "Bank Account details": [],
                "Form 16": [],
                "Form 16A": [],
                "Form 26AS": [],
                "Investment details": [],
                "Rent receipts for claiming house rent allowance": [],
                "Bank Passbook": [],
                "Fixed deposit statement": [],
                "Proof of investment": [],
                "Medical expenses receipts, if any": [],
                "Proof of home loan interest, if any": [],
                "Share transaction statement, if any": [],
                "GST Registration Number Details if any": [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Points to be Considered During Efiling of ITR",
              steps: {
                "Choose the correct income tax return form": [],
                "Clearly identify the heads of income under which it is taxable":
                    [],
                "Declare all your assets if your income is more than Rs. 50 lakhs in a year.":
                    [],
                "Keep all documents and proofs safe for any future reference.":
                    [],
                "Should mention your Aadhar Number": [],
                "Study your Form 26AS i.e. tax credit statement": [],
                "Check your personal details": [],
                "Also add interest income earned from fixed deposits": [],
                "Don’t hide any of your source of income": [],
                "Report your exempted income": [],
                "Should verify your income tax returns": [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Steps to File Income Tax Return eFiling Online",
              steps: {
                "Visit https://incometaxindiaefiling.gov.in and create your e filling account.":
                    [],
                "Your PAN number will be your login id and you have to create account using the PAN number as login Id and password.":
                    [],
                "Login on the website using your PAN number and password": [],
                "You now have to link your Aadhar card mandatory.": [],
                "You should choose the option of ‘link Aadhaar’ under the profile setting tab. Enter details as per Aadhar card like name, Aadhar number etc. and then confirm and link your Aadhar card to your Income tax account.":
                    [],
                "Open form 26AS under the quick link menu. Form 26 AS contains summary of the taxes you have paid over the financial year and includes tax deducted at source, advance tax and self-assessment tax.":
                    [],
                "Then download the correct ITR form as mentioned above": [],
                "Download the ‘excel utility’ of the Income tax return and fill in details like Name, PAN, Address, Date of birth, Email ID, Mobile number, choose whether original or revised return, Other taxable income, Investments, Taxes deducted, Bank details etc.":
                    [],
                "After filling the details click on ‘validate’ button on all sheets of the excel utility.":
                    [],
                "Once all sheets are validated click on calculate tax": [],
                "Pay the tax payable if any and provide the challan details in the ITR form.":
                    [],
                "Click on generate ‘XML’ and save the XML file on your desktop.":
                    [],
                "Go to your account on the website and click on ‘upload return’.":
                    [],
                "Fill in the ITR form, name, assessment year and upload the XML File. If you have digital signature, then upload it too.":
                    [],
                "Click on ‘submit’.": [],
                "You will get an acknowledgement. Take a print of the acknowledgement.":
                    [],
                "If your have given your digital signature, then your income tax return filling process is complete.":
                    [],
                "If not, then you will receive a form ITR-V which is an acknowledgement and verification. You can print the same and sign using blue pen and then post it to the income tax department within 120 days of e-filling at: Income Tax Department – CPC, Post Bag No – 1, Electronic City Post Office, Bengaluru – 560100 within 120 days of e-filing. You will then receive an acknowledgement of receipt of ITR-V by email and SMS.":
                    [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "Every taxpayer whether it be an individual, Hindu undivided family, company association of persons, Company etc all have to file income tax returns to the income tax departments. Filling income tax return is very simple and can be done online also.",
              title: "Conclusion for Income Tax Return",
            ),
          ),
        ],
      ),
    );
  }
}
