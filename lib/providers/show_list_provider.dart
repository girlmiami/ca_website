import 'package:ca_website/reusable/static_data.dart';
import 'package:flutter/cupertino.dart';

class ShowListProvider with ChangeNotifier {
  List size_of_widget = [];
  List offset_of_widget = [];
  bool showList = false;
  List<String> listToShow = [];

  setListToShow(index) {
    switch (index) {
      case 1:
        listToShow = StaticData.businessRegistrationTypes;
        break;
      case 2:
        listToShow = StaticData.gstPortalTypes;
        break;
      case 3:
        listToShow = StaticData.businessLicenseType;
        break;
      case 4:
        listToShow = StaticData.annualServiceTypes;
        break;
      case 5:
        listToShow = StaticData.iprServiceTypes;
        break;
      case 6:
        listToShow = StaticData.supportTypes;
        break;
    }
  }

  setPositionOfWidget(
    sizeList,
    offsetList,
    index,
  ) {
    size_of_widget = sizeList;
    offset_of_widget = offsetList;
    showList = true;
    setListToShow(index);
    notifyListeners();
  }

  changeShowListBool(value) {
    showList = value;
    notifyListeners();
  }
}
