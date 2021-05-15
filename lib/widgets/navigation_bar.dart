import 'package:ca_website/main.dart';
import 'package:ca_website/providers/show_list_provider.dart';
import 'package:ca_website/reusable/widget_position.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  WidgetPosition widgetPosition = WidgetPosition();
  GlobalKey _keyBussReg = GlobalKey();
  GlobalKey _keyGstPortal = GlobalKey();
  GlobalKey _keyBussLicense = GlobalKey();
  GlobalKey _keyAnnualService = GlobalKey();
  GlobalKey _keyIprService = GlobalKey();
  GlobalKey _keySupport = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        height: 100,
        width: screenWidth,
        // color: Colors.lightGreen,
        decoration: BoxDecoration(
          // border: Border.all(
          //   color: Colors.black,
          // ),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.1, 0.9],
            colors: [
              Colors.green[800],
              Colors.green[400],
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            logo(),
            SizedBox(
              width: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                barItem("BUSINESS REGISTRATION", 1, _keyBussReg),
                barItem("GST PORTAL", 2, _keyGstPortal),
                barItem("BUSINESS LICENSE", 3, _keyBussLicense),
                barItem("ANNUAL SERVICE", 4, _keyAnnualService),
                barItem("IPR SERVICE", 5, _keyIprService),
                barItem("SUPPORT", 6, _keySupport),
              ],
            ),
          ],
        ),
      ),
    );
  }

  barItem(text, index, key) {
    return GestureDetector(
      onTap: () => onTapItem(key, index),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          key: key,
          child: Row(
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,

                ),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapItem(GlobalKey key, index) {
    var listProvider = Provider.of<ShowListProvider>(context, listen: false);
    if (listProvider.showList) {
      listProvider.changeShowListBool(false);
    } else {
      listProvider.setPositionOfWidget(
        widgetPosition.getSizes(key),
        widgetPosition.getPositions(key),
        index,
      );
    }
  }

  logo() {
    return Material(
      elevation: 10,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Colors.white,
        ),
      ),
      child: Container(
        width: 200,
        height: 60,
        child: Center(
          child: Text(
            "CA Portal",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
      ),
    );
  }
}
