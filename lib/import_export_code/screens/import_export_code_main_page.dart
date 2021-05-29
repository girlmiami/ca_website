import 'package:ca_website/models/dataWithDescription.dart';
import 'package:ca_website/models/dataWithSteps.dart';
import 'package:ca_website/reusable/import_export_code_data.dart';
import 'package:ca_website/widgets/advantages_section.dart';
import 'package:ca_website/widgets/book_consultancy.dart';
import 'package:ca_website/widgets/section_with_description_only.dart';
import 'package:ca_website/widgets/section_with_steps.dart';
import 'package:ca_website/widgets/top_section.dart';
import 'package:flutter/cupertino.dart';

import '../../main.dart';

class ImportExportCodeMainPage extends StatefulWidget {
  const ImportExportCodeMainPage({Key key}) : super(key: key);

  @override
  _ImportExportCodeMainPageState createState() =>
      _ImportExportCodeMainPageState();
}

class _ImportExportCodeMainPageState extends State<ImportExportCodeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight - 100,
      child: ListView(
        children: [
          TopSection(
            bigText: "IEC Code Online Registration Import Export Code",
            smallTextLine1:
                "Package Start From Just @2499/- INR\n(Import Export Code Registration + Premium Legal Agreements)",
            smallTextLine2:
                "India’s No. 1 Business Registration Portal Helps you to Get IEC Code Registration Online",
            showButton: true,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "What is Import Export Code ?",
              subtitle:
                  "Import Export Code (IEC) is required by a person who’s want to start import export business in india. IEC Code is issued by the Director general of foreign trade(DGFT). its a 10 digit code with a lifetime validity. Mostly importers merchant can’t import any goods without the IEC Code and exporter merchant can’t avail the benefits from the DGFT Department for the export scheme etc.\n\nImport Export Code is required in following situation :",
              steps: {
                "When importers have to clear the shipments from the customs then it’s required by the customs.":
                    [],
                "When importers send the money to abroad via banks then it’s required by the banks through SWIFT Code.":
                    [],
                "When exporters have to send the shipments then its required by the customs port.":
                    [],
                "When exporters received the money in foreign currency directly into the bank then its needed by the banks.":
                    [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Import Export Code Registration Package",
              subtitle:
                  "MyOnlineCA offers a awesome IEC Code Registration Package :",
              steps: {
                "Drafting of the Documents for the IEC Code Registration.": [],
                "Filings of the Application.": [],
                "Processing of the application.": [],
                "10+ Premium Legal Agreement templates for your business.": [],
              },
            ),
            showBackgroundColor: true,
            showButton: true,
          ),
          BookConsultancy(
            title: "Book Free Consultation Right Now",
            subtitle: "IEC Code Registration",
            subtitle2:
                "Simply Fill-Up Below Details and Get Connect with Expert",
            typeOfForm: "Gst Registration",
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "How to Apply for Import Export Code (IEC) Registration",
              steps: {
                "First of all we have to prepare a application form in the prescribe format i.e aayaat niryaat form 2A format and filed with the proper DGFT Regional office.":
                    [],
                "In the second step we have to prepare the necessary documents related to the applicant identity & address proof and legal entity proof with the bank details & certificate in respect of ANF2A.":
                    [],
                "In the third step once application has been completed, we file with the DGFT through DSC of the applicant and pay the appropriate fee or cost of the IEC Registration.":
                    [],
                "Once application has been approved then you will get the IEC Code in the soft copy from the government department.":
                    [],
              },
            ),
            showButton: false,
            showBackgroundColor: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title:
                  "Documents Required for Import Export Code(IEC) Registration",
              subtitle: "IEC Code Registration required following things :",
              steps: {
                "Individual Person": [],
                "Personal or Company or Firm Pan Card Copy.": [],
                "Personal aadhar card or voter id or passport copy.": [],
                "Personal or company or firm current bank account cancel cheque copy.":
                    [],
                "Electricity Bill Copy or Rent Agreement or Sale deed of the premise copy.":
                    [],
              },
            ),
            showButton: false,
            showBackgroundColor: false,
          ),
          AdvantagesSection(
            title: "Features of the Import Export Code(IEC) Registration",
            data: ImportExportCodeData.features,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              description:
                  "We are one of the trusted online legal service provider company. Our 99% Clients are small startups & business across India from ECommerce,Tech Startups, IT & HR Services,retailers, traders & many more sectors. We can help you to get IEC Code Registration.",
              title: "Indian Startups Love Us",
            ),
          ),
          SectionWithSteps(
            data: DataWithSteps(
                title: "How to Apply for Import Export Code IEC Code Offline",
                subtitle:
                    "Step 1 : You have to file an application in Aayaat Niryaat Form 2A (ANF 2A) format to the Regional Authority of the DGFT in whose jurisdiction your registered office is situated.\n\nStep 2 : Following documents are required for IEC application:\nAayaat Niryaat Form which is duly filed\n",
                steps: {
                  "Bank Receipt /Demand Draft details as evidence of payment of application fee of Rs. 500/-. DD drew in favour of Zonal DGFT.":
                      [],
                  "Certificate from the applicant firm’s banker in the format specified.":
                      [],
                  "Self-certified copy of Permanent Account Number (PAN) issued by Income Tax Authorities. (Only one IEC is issued against one PAN no.)":
                      [],
                  "Two copies of passport size photographs of the applicant. The photograph on the banker’s certificate should be attested by the banker of the applicant.":
                      [],
                  "Self-addressed envelope duly stamped for Rs.15/-(for Local Address) & Rs.20/- (for Outstation).":
                      [],
                  "Address proof of the applicant firm / individual.": [],
                  "Details of Partners / Director / Proprietor / Trustee & their complete details, List of branches, registered office, Head office, and factory located in India & abroad with contact details.":
                      [],
                  "In case of Limited companies (both Private and Public Ltd.):":
                      [
                    "Extract of Board Resolution in favour of the applicant.",
                    "Memorandum of Association along with Certificate of Incorporation.",
                    "Form 32 in the case of change of Directors and Form 18 in the case of change of registered office-whichever applicable.",
                  ],
                  " In case of Partnership firm:": [
                    "Notarized Partnership Deed showing the date of formation of the firm.",
                    "No Objection Certificate from other Partners/HUF.",
                  ],
                },
                subtitle2:
                    "Step 3 : You can download the application form from gov.in and search for “Application Form for Issue Importer Exporter Code Number (IEC)” or use this link or can obtain a form from any regional offices of DGFT.\n\nStep 4 : You can submit the filled application with all required document to your regional DGFT office or you can post it to the regional DGFT office.\n\nStep 5 : You will be given a file number and you can use it to check the status of your application on dgft.gov.in."),
            showButton: false,
            showBackgroundColor: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Online procedure for Obtaining Import Export IEC Code",
              steps: {
                "You have to submit a duly filled application form online at the DGFT official Website along with the documents required. These documents should be in pdf format only.":
                    [],
                "You should have scanned copy of the following in gif format which should not exceed 300 KB:":
                    [
                  "PAN (both sides)",
                  "applicant Photograph",
                  "Bank Certificate",
                ],
                "Exporter must have a Net banking account with one of the following banks":
                    [
                  "HDFC BANK",
                  "ICICI BANK",
                  "BANK OF INDIA",
                  "STATE BANK OF INDIA",
                  "CENTRAL BANK OF INDIA",
                  "PUNJAB NATIONAL BANK",
                  "IDBI",
                  "UTI/AXIS BANK",
                  "UNION BANK OF INDIA",
                ],
                "You have to go to DGFT Website and Click on “IEC Online Application”.":
                    [],
                "You then have to enter your PAN number. So as to create new IEC application select ‘Create’ from ‘File’ menu.":
                    [],
                "It will then display new ‘ECOM Reference No.": [],
                "you then have to fill in your details like name and designation of the applicant, address, pin code, phone no, email address, Date of Establishment, PAN date, PAN Issuing authority, Banker Name, Bank Account Number.":
                    [],
                "You will have to make a payment of Rs.250 through online fund transfer from the selected banks.":
                    [],
                "It is mandatory for all applicants to upload the documents based on your entity e.g. company, sole proprietor, partnership etc, PAN card, Photograph and bank certificate.Select:":
                    [
                  "PANC to upload PAN Copy",
                  "FOTO to upload Photograph of Applicant",
                  "BKYC to upload Bank Certificate Copy",
                  "MOAS to upload the Memorandum of association",
                  "EBRA to upload Extract of Board Resolution",
                  "FM32 to upload Form 32 in case of change of Directors",
                  "FM18 to upload Form 18 in the case of change of registered office-wherever applicable.",
                  "AOTH to upload any other relevant document, if required.",
                  "ANFP will remain to disable always.",
                  "NRID to upload the RBI approval letter. (Applicable in case of NRI)",
                ],
                "The documents required are complete and submitted to DGFT you will get your IEC in one or 2 weeks.":
                    [],
                "If one wants to modify IEC then if an application for modification or amendment is made within 90 days then no fee is payable but if after 90 days then payment of Rs. 1000 has to be made in form of demand draft to concerned regional authority. So above are the Online and Offline Procedure to obtain the Import Export Code. Hope this article helpful for you regarding apply for the Import Export Code. if you need any professional Import Export Code Service then place a request on MyOnlineCA and Get done IEC Code at fingerTips":
                    [],
              },
            ),
            showButton: false,
            showBackgroundColor: false,
          ),
        ],
      ),
    );
  }
}
