import 'package:ca_website/llp_registration/screens/llp_company_main_page.dart';
import 'package:ca_website/private_company_registration/screens/private_company_main_page.dart';
import 'package:ca_website/providers/show_list_provider.dart';
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
  String _type = "HOME";

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
          return Column(
            children: [
              NavigationBar(),
              Stack(
                children: [
                  Scrollbar(
                    showTrackOnHover: true,
                    child: screenToShow(_type),
                  ),
                  listProvider.showList
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
                                  return ListTile(
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
                                      listProvider.changeShowListBool(false);
                                    },
                                  );
                                },
                              ).toList(),
                            ),
                          ),
                        )
                      : SizedBox(),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  screenToShow(type) {
    switch (type) {
      case "HOME":
        return FirstScreen();
        break;
      case "COMPANY REGISTRATION":
        return PrivateCompanyMainPage();
        break;
      case "FIRM REGISTRATION":
        return LlpRegistrationMainPage();
        break;
    }
  }
}
