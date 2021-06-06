import 'package:ca_website/company_annual_filing/screens/company_annual_filing_main_page.dart';
import 'package:ca_website/fssai_registration/screens/fssai_registration_main_page.dart';
import 'package:ca_website/gst_filing/screens/gst_return_filing.dart';
import 'package:ca_website/gst_registration/screens/gst_registration_main_page.dart';
import 'package:ca_website/gumasta_registration/screens/gumasta_license_registration_main_page.dart';
import 'package:ca_website/import_export_code/screens/import_export_code_main_page.dart';
import 'package:ca_website/income_tax_efiling/screens/income_tax_efiling_main_page.dart';
import 'package:ca_website/iso_certificate/screens/iso_certificate_main_page.dart';
import 'package:ca_website/llp_filing/screens/llp_filing_main_page.dart';
import 'package:ca_website/llp_registration/screens/llp_company_main_page.dart';
import 'package:ca_website/msme_registration/screens/msme_registration_main_page.dart';
import 'package:ca_website/one_person_company_registration/screens/one_person_company_main_page.dart';
import 'package:ca_website/partnership_registration/screens/partnership_registration_main_page.dart';
import 'package:ca_website/private_company_registration/screens/private_company_main_page.dart';
import 'package:ca_website/proprietorship_registration/screens/proprietorship_registration_main_page.dart';
import 'package:ca_website/providers/show_list_provider.dart';
import 'package:ca_website/reusable/widget_position.dart';
import 'package:ca_website/screens/first_screen.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WidgetPosition widgetPosition = WidgetPosition();

  // ScrollController _scrollController = ScrollController(initialScrollOffset: 0.0);
  String _type = "HOME";
  List<GlobalKey> allGlobalKeys = [];

  List<GlobalKey> allSmallGlobalKey = [];

  // @override
  // void dispose() {
  //   _scrollController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        child: Icon(
          Icons.menu,
          color: Colors.white,
          size: 20,
        ),
      ),
      body: Consumer<ShowListProvider>(
        builder: (context, listProvider, _) {
          var itemIndex = 0;
          var itemIndex2 = 0;
          listProvider.listToShow.forEach((element) {
            allGlobalKeys.add(GlobalKey());
          });
          listProvider.extraListToShow.forEach((element) {
            allSmallGlobalKey.add(GlobalKey());
          });
          // print(listProvider.showList);
          // print(listProvider.showSmallList);
          return Column(
            children: [
              NavigationBar(),
              Container(
                height: screenHeight - 100,
                child: Stack(
                  children: [
                    Scrollbar(
                      // controller: _scrollController,
                      showTrackOnHover: true,
                      // isAlwaysShown: true,
                      child: GestureDetector(
                        onTap: () {
                          listProvider.changeShowListBool(false);
                          listProvider.changeShowSmallListBool(false);
                          listProvider.notifyAllConsumers();
                        },
                        child: screenToShow(_type),
                      ),
                    ),
                    listProvider.showList || listProvider.showSmallList
                        ? Positioned(
                            top: 0.0,
                            left: listProvider.offset_of_widget[0],
                            child: Container(
                              width: 200,
                              height: listProvider.listToShow.length * 50.0,
                              color: Colors.black,
                              child: ListView(
                                children: listProvider.listToShow.map<Widget>(
                                  (e) {
                                    // print("kbsjkbjsbc");
                                    itemIndex++;
                                    return InkWell(
                                      onTap: () {},
                                      onHover: (value) => onHoverSmallItem(
                                        allGlobalKeys[itemIndex - 1],
                                        e,
                                        value,
                                        itemIndex,
                                      ),
                                      child: Material(
                                        color: Colors.black,
                                        child: ListTile(
                                          hoverColor: Colors.green[900],
                                          key: allGlobalKeys[itemIndex - 1],
                                          title: Text(
                                            "$e",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                            ),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              _type = e;
                                            });
                                            // listProvider.changeShowListBool(false);
                                          },
                                        ),
                                      ),
                                    );
                                  },
                                ).toList(),
                              ),
                            ),
                          )
                        : SizedBox(),
                    listProvider.showSmallList
                        ? Positioned(
                            top: 0.0,
                            left: listProvider.offset_of_small_widget.length ==
                                    0
                                ? 0.0
                                : listProvider.offset_of_small_widget[0] + 201,
                            child: Container(
                              width: 200,
                              height:
                                  listProvider.extraListToShow.length * 50.0,
                              color: Colors.black,
                              child: ListView(
                                children:
                                    listProvider.extraListToShow.map<Widget>(
                                  (e) {
                                    // print("hvvkhhkvk");
                                    itemIndex2++;
                                    return InkWell(
                                      onTap: () {},
                                      onHover: (value) => onHoverSmallestItem(
                                        allSmallGlobalKey[itemIndex2 - 1],
                                        e,
                                        value,
                                      ),
                                      child: ListTile(
                                        title: Text(
                                          "$e",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                          ),
                                        ),
                                        onTap: () {
                                          setState(() {
                                            _type = e;
                                            listProvider
                                                .changeShowListBool(false);
                                            listProvider
                                                .changeShowSmallListBool(false);
                                          });
                                          // listProvider.changeShowListBool(false);
                                        },
                                      ),
                                    );
                                  },
                                ).toList(),
                              ),
                            ),
                          )
                        : SizedBox(),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  onHoverSmallestItem(GlobalKey key, String index, bool onHover) {
    // print("hovering smallest items : $onHover");
    var listProvider = Provider.of<ShowListProvider>(context, listen: false);
    // listProvider.changeShowListBool(onHover);
    listProvider.changeSelectedString(index);
    listProvider.changeShowListBool(onHover);
    listProvider.changeShowSmallListBool(onHover);
  }

  void onHoverSmallItem(
      GlobalKey key, String index, bool onHover, int itemIndex) {
    // print("hovering small items : $onHover");
    var listProvider = Provider.of<ShowListProvider>(context, listen: false);

    listProvider.changeSelectedString(index);
    listProvider.changeShowListBool(onHover);

    if (index == "FIRM REGISTRATION" || index == "COMPANY REGISTRATION") {
      // listProvider.changeShowListBool(onHover);

      listProvider.changeShowSmallListBool(onHover);

      // listProvider.setPositionOfWidget(
      //   widgetPosition.getSizes(key),
      //   widgetPosition.getPositions(key),
      //   index,
      // );
      var pos = widgetPosition.getPositions(key);

      listProvider.setPositionOfSmallWidget(
        widgetPosition.getSizes(key),
        [pos[0], pos[1] - (itemIndex * 50)],
        listProvider.hoveringString,
      );
    }
  }

  screenToShow(type) {
    switch (type) {
      case "HOME":
        return FirstScreen();
        break;
      case "PRIVATE LIMITED COMPANY REGISTRATION":
        return PrivateCompanyMainPage();
        break;
      case "LLP REGISTRATION":
        return LlpRegistrationMainPage();
        break;
      case "ONE PERSON COMPANY REGISTRATION":
        return OnePersonCompanyRegistrationMainPage();
        break;
      case "GST REGISTRATION":
        return GstRegistrationMainPage();
        break;
      case "GST RETURN FILING":
        return GstReturnFilingMainPage();
        break;
      case "MSME REGISTRATION":
        return MsmeRegistrationMainPage();
        break;
      case "IMPORT EXPORT CODE":
        return ImportExportCodeMainPage();
        break;
      case "FSSAI REGISTRATION":
        return FssaiRegistrationMainPage();
        break;
      case "GUMASTA LICENSE":
        return GumastaLicenseRegistrationMainPage();
        break;
      case "ISO CERTIFICATE":
        return IsoCertificationMainPage();
        break;
      case "INCOME TAX FILING":
        return IncomeTaxEFilingMainPage();
        break;
      case "LLP ANNUAL FILING":
        return LlpFilingMainPage();
        break;
      case "COMPANY ANNUAL FILING":
        return CompanyAnnualFilingMainPage();
        break;
      case "PROPRIETORSHIP REGISTRATION":
        return ProprietorshipRegistrationMainPage();
        break;
      case "PARTNERSHIP REGISTRATION":
        return PartnershipRegistrationMainPage();
        break;
    }
  }
}
