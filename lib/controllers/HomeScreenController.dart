import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:getx/screens/counter.dart";
import "package:getx/screens/maps.dart";
import "package:getx/screens/settings.dart";

class Homescreencontroller extends GetxController {
  RxInt selectedIndex = 0.obs;
  List<Widget> pages = [Counter(), const Maps(), const Settings()];


  void IndexChanged(int index) {
    selectedIndex.value = index;
  }
}
