import "package:get/get.dart";

class Counterscreencontroller extends GetxController {
  RxInt counter = 0.obs;

  void increment() {
    counter++;
  }
}
