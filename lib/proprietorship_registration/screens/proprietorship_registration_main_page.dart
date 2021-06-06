import 'package:ca_website/models/dataWithDescription.dart';
import 'package:ca_website/models/dataWithSteps.dart';
import 'package:ca_website/models/subsection_dataWithDescription.dart';
import 'package:ca_website/models/subsection_dataWithSteps.dart';
import 'package:ca_website/reusable/proprietorship_registration_data.dart';
import 'package:ca_website/small_widgets/description_widget.dart';
import 'package:ca_website/small_widgets/subsection_with_description.dart';
import 'package:ca_website/small_widgets/subsection_with_steps.dart';
import 'package:ca_website/widgets/book_consultancy.dart';
import 'package:ca_website/widgets/description_section.dart';
import 'package:ca_website/widgets/document_required_section.dart';
import 'package:ca_website/widgets/faq_section.dart';
import 'package:ca_website/widgets/registration_fees.dart';
import 'package:ca_website/widgets/section_title.dart';
import 'package:ca_website/widgets/section_with_description_only.dart';
import 'package:ca_website/widgets/section_with_steps.dart';
import 'package:ca_website/widgets/top_section.dart';
import 'package:flutter/cupertino.dart';

import '../../main.dart';

class ProprietorshipRegistrationMainPage extends StatefulWidget {
  const ProprietorshipRegistrationMainPage({Key key}) : super(key: key);

  @override
  _ProprietorshipRegistrationMainPageState createState() =>
      _ProprietorshipRegistrationMainPageState();
}

class _ProprietorshipRegistrationMainPageState
    extends State<ProprietorshipRegistrationMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight - 100,
      child: ListView(
        children: [
          TopSection(
            bigText: "Proprietorship Firm Registration Online",
            smallTextLine1:
                "Sole Proprietorship Firm Registration Online with Govt Certified Portal",
            smallTextLine2: "Starting Package Just Only at 1499/- INR",
            showButton: true,
          ),
          SectionWithDescriptionOnly(
            data: DataWithDescription(
              title: "Proprietorship Firm Registration ?",
              description:
                  "​Sole Proprietorship Firm Registration is Single Person Firm Registration i.e is the main objective is Open Current Bank Account on the Name of Business so it’s a simply firm which is enable doing business in India with Less Compliance and Less Costing. a Sole Proprietorship Firm require minimum 2 Legal Entity Proof for open a Current Bank Account.",
            ),
          ),
          FaqSection(
            data: ProprietorshipRegistrationData.legalProof,
            title:
                "2 Legal Entity Proof for the Sole Proprietorship Registration in India :",
          ),
          RegistrationFeesSection(
            data: ProprietorshipRegistrationData.registrationFees,
          ),
          RegistrationFeesSection(
            data: ProprietorshipRegistrationData.registrationFees2,
          ),
          BookConsultancy(
            title: "Book Free Consultation Right Now",
            subtitle: "Firm Registration",
            subtitle2:
                "100% Govt Certified Platform with Registered 50k+ Firm's",
            typeOfForm: "One Person Company Registration",
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Proprietorship Firm Registration Process",
              subtitle:
                  "There are simply 3 steps to register your Firm with MyOnlineCA",
              steps: {
                "Fill-Up your Proprietorship Firm Application Simplified form.":
                    [],
                "Make payment of package online via cards/netbanking/upi/wallets etc in a secure way":
                    [],
                "Assign a dedicated CA/Legalexperts & submit the docs online via emails or WhatsApp. Be Relax ! your work is done.":
                    [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "How to Register Proprietorship Firm Online ?",
              subtitle:
                  "As mentioned above proprietorship firm required 2 legal entity proof so these can be done online with the help of MyOnlineCA at the cheapest cost. Why do it online through MyOnlineCA ? there are 4 reason –",
              steps: {
                "Get better & cheap pricing package as compare to Agents or traditional & other portals.":
                    [],
                "MyOnlieCA is Recognized Company under Govt Official Startup India Programme with Trusted over 10k customer.":
                    [],
                "Highest Social True Reviews on Facebook with 5 Star Ratings.":
                    [],
                "Dedicated Support via Emails | Calls | WhatsApp.": [],
                "Free Premium Legal Consultancy to Start your new business.":
                    [],
                "100% Money Back Guarantee on any service.": [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          DocumentRequiredSection(
            title: "Documents Required for Sole Proprietorship Registration",
            data: ProprietorshipRegistrationData.documentRequired,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Time to Register Proprietorship Firm ?",
              steps: {
                "MSME Registration + CA Certification | 2-6 days avg from working on the assignment.":
                    [],
                "GST Registration | avg 7 days from working on the assignment.How to Search a Company Name.":
                    [],
              },
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          SectionWithSteps(
            data: DataWithSteps(
              title: "Benefits of Proprietorship Firm Registration ?",
              subtitle: "Below are Advantages of Proprietorship Firm –",
              steps: {
                "1 Person Required as Single Entrepreneur.": [],
                "Single Owner of the Business.": [],
                "Easy to Start and Easy to Close.": [],
                "Complete Control.": [],
                "Lower Cost of Formation and Compliance.": [],
              },
              subtitle2:
                  "Learn here more about the Proprietorship Firm Benefits.",
            ),
            showBackgroundColor: false,
            showButton: false,
          ),
          FaqSection(
            data: ProprietorshipRegistrationData.faqQuestions,
            title: "FAQ on Sole Proprietorship Registration ?",
          ),
          stepsToRegister(
              "Steps for register sole proprietorship firm in india for Startups"),
        ],
      ),
    );
  }

  stepsToRegister(title) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      width: screenWidth / 1.5,
      child: Center(
        child: Column(
          children: [
            SectionTitle(
              title: title,
            ),
            DescriptionWidget(
              text:
                  "Now we explain here in the details regarding the steps to register sole propreitorship registration. ​For the convenience of the readers, we can divide all valid license certificate into the 2 Categories.",
            ),
            SubsectionWithDescription(
              data: SubSectionDataWithDescription(
                  title: "Tax Registration (GST Registration) –",
                  description:
                      "So From 1st July 2017 the government of India imposed the GST on all the business. GST is basically a uniform tax which replaces the various taxes like Service Tax | VAT/CST Registration or TIN Number etc.\n\nSo Ultimately Now whether you are doing service-based business or product based business, you have to required only the GST ( Good and Service Tax) when turnover or sales cross more than 20 lakh rupees in a year or in the northeast state 10 lakh rupees in a year. but in some following cases, you have to require the GST Registration as sole proprietorship firm in the starting :-\n\n-When you want to deal with inter state and supply goods and services across the state anywhere in India.\n-When you are doing trading or retail and your other suppliers are registered under the GST.\n-When you want to start an online ecommerce business or internet related any type of business."),
              index: "a)",
            ),
            SubSectionWithSteps(
              data: SubSectionDataWithSteps(
                title: "Documents Required as a GST for the Firm :-",
                steps: [
                  "Personal Pan Card Copy",
                  "Aadhar Card Copy",
                  "Electricity Bill Copy of Business Location or Premise (Don’t worry if its on another person name)",
                  "Personal Bank Statement Copy or Cancel Cheque anyone",
                  "Passport Size Photograph",
                ],
              ),
              indexString: "",
            ),
            DescriptionWidget(
              text:
                  "Note : if your firm falls under the Option “A” then just click on the below button and Let’s Start your Registration at Low Cost.",
            ),
            SubSectionWithSteps(
              data: SubSectionDataWithSteps(
                title:
                    "Basic Local or Central Government or other Body License – (It’s not a long-term solution)",
                subtitle:
                    "These type licenses are issued by the central government or state government or any other body on the name of sole proprietorship Firm. Most of the banks required anyone minimum 2 Valid Certification out of 4 in this category which are following –",
                steps: [
                  "Chartered Accountant Certificate – ICAI (The Institute of Chartered Accountant of India) is a body which is incorporated by the government of India for the chartered accountants. so all the practicing members only of ICAI (i.e is CA) can verify the documents and information of the sole proprietor & issued a CA Certification to open a current bank account on proprietor name.\n(Note : Some private banks are not accepted the CA Certification so just confirm with your bank)",
                  "MSME Registration Online Certificate – MSME (Micro small and medium enterprise) is a government body which is incorporated for the formation of rules & regulations for small business in India so they can issue a registration certificate on the name of proprietorship firm.\n(Note : Some private banks are not accepted the MSME Certificate so just confirm with your bank)",
                  "Income Tax Return (Business ITR) – Every person which are living and earn in India, they have to pay the income tax yearly basis. so if you are earning from your business as freelancer then you can file your ITR on the business name as proprietorship firm status.",
                  "Shop Act License – Every state or regional city or area have a municipal party to control on the local business which is incorporated by the respective state government. so they can issue also a shop act licence on the physical shop name as proprietorship firm status.",
                ],
              ),
              indexString: "b)",
            ),
            DescriptionWidget(
              text:
                  "So all the proprietorship firm owner’s which is just starting the new business within the state,they can go with the anyone above 2 legal valid certifications. We highly recommend to you go with the CA Certification and MSME Registration Certificate or CA+ Income Tax Return which is issued by the government & you can run your business anywhere in India.",
            ),
            SubSectionWithSteps(
              data: SubSectionDataWithSteps(
                title:
                    "Conclusion about to Register a Sole Proprietorship Firm in India :-",
                steps: [
                  "Option 1 as GST Registration – Go with this option when you starting a business and required the GST Registration as mandatory or voluntary registration due to business nature and above legal conditions.",
                  "Option 2 as MSME or CA Certification + ITR or CA Certification + Shop act license – Go with this option when you just starting your very small business and not required the GST Registration in any condition.",
                ],
              ),
              indexString: "",
            ),
          ],
        ),
      ),
    );
  }
}
