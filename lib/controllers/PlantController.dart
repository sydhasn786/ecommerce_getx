import 'package:get/get.dart';

class Plantcontroller extends GetxController {
  var categories = ['All', 'Indoor', 'Outdoor', 'Garden', 'Succulents'];
  var selectedCategoryIndex = 0.obs;
  var favoritePlant = 0.obs;

  void selectCategory(int index) {
    selectedCategoryIndex.value = index;
  }
RxList<Plant> plants = <Plant>[
  Plant(
    name: "Jade Plant",
    image: "assets/splash.png",
    price: 15,
    isFav: false,
  ),
  Plant(
    name: "Snake Plant",
    image: "assets/splash.png",
    price: 18,
    isFav: false,
  ),
  Plant(
    name: "Aloe Vera",
    image: "assets/splash.png",
    price: 12,
    isFav: false,
  ),
  Plant(
    name: "Peace Lily",
    image: "assets/splash.png",
    price: 22,
    isFav: false,
  ),
  Plant(
    name: "Money Plant",
    image: "assets/splash.png",
    price: 10,
    isFav: false,
  ),
  Plant(
    name: "Bamboo Plant",
    image: "assets/splash.png",
    price: 25,
    isFav: false,
  ),
  Plant(
    name: "Spider Plant",
    image: "assets/splash.png",
    price: 14,
    isFav: false,
  ),
  Plant(
    name: "Rubber Plant",
    image: "assets/splash.png",
    price: 28,
    isFav: false,
  ),
].obs;

  void toggleFavorite(int index) {
    plants[index].isFav.toggle();
  }

}
class Plant {
  final String name;
  final String image;
  final double price;
  RxBool isFav;

  Plant({
    required this.name,
    required this.image,
    required this.price,
    required bool isFav,
  }) : isFav = isFav.obs;
}

