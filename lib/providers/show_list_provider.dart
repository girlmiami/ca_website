import 'package:ca_website/reusable/static_data.dart';
import 'package:flutter/cupertino.dart';

class ShowListProvider with ChangeNotifier {
  List size_of_widget = [];
  List offset_of_widget = [];
  List<String> listToShow = [];
  String hoveringString;
  bool showList = false;

  List size_of_small_widget = [];
  List offset_of_small_widget = [];
  List<String> extraListToShow = [];
  String hoveringStringSmall;
  bool showSmallList = false;

  setListToShow(
    String index,
    bool forList,
  ) {
    List<String> sampleList = [];
    setList(bool f) {
      if (f) {
        listToShow = sampleList;
      } else {
        extraListToShow = sampleList;
      }
    }

    switch (index) {
      case "BUSINESS REGISTRATION":
        sampleList = StaticData.businessRegistrationTypes;
        setList(forList);
        break;
      case "GST PORTAL":
        sampleList = StaticData.gstPortalTypes;
        setList(forList);
        break;
      case "BUSINESS LICENSE":
        sampleList = StaticData.businessLicenseType;
        setList(forList);
        break;
      case "ANNUAL SERVICE":
        sampleList = StaticData.annualServiceTypes;
        setList(forList);
        break;
      case "IPR SERVICE":
        sampleList = StaticData.iprServiceTypes;
        setList(forList);
        break;
      case "SUPPORT":
        sampleList = StaticData.supportTypes;
        setList(forList);
        break;
      case "COMPANY REGISTRATION":
        sampleList = StaticData.companyRegistrationTypes;
        setList(forList);
        break;
      case "FIRM REGISTRATION":
        sampleList = StaticData.firmRegistrationTypes;
        setList(forList);
        break;
    }
  }


  notifyAllConsumers(){
    notifyListeners();
  }

  setPositionOfWidget(
    sizeList,
    offsetList,
    index,
  ) {
    size_of_widget = sizeList;
    offset_of_widget = offsetList;
    if (showList) {
      setListToShow(index, true);
    }
    notifyListeners();
  }

  setPositionOfSmallWidget(
    sizeList,
    offsetList,
    index,
  ) {
    size_of_small_widget = sizeList;
    offset_of_small_widget = offsetList;
    if (showSmallList) {
      setListToShow(index, false);
    }
    notifyListeners();
  }

  changeShowListBool(value) {
    if (value == false) {
      showSmallList = false;
    }
    if (value == true) {}
    showList = value;

    // notifyListeners();
  }

  changeSelectedString(String hoveringText) {
    hoveringString = hoveringText;
  }

  changeSelectedStringSmall(String hoveringText) {
    hoveringStringSmall = hoveringText;
  }

  changeShowSmallListBool(value) {
    showSmallList = value;
    // notifyListeners();
  }
}
