import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/PlantController.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});
  final Plantcontroller plantcontroller = Get.put(Plantcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(onPressed: () {},
      backgroundColor: Color(0xff475E3E),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Icon(Icons.qr_code_scanner,color: Colors.white,),
      ),
      body: Column(
        children: [
          topBar(),
          Gap(10),
          location(),
          Gap(10),
          search(),
          Gap(10),
          plantCategories(),
          Gap(10),
          plantListCardView(),
        ],
      ),
    );
  }

  Widget topBar() {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(radius: 24),
        Gap(14),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff98A2B3),
              ),
            ),
            Text(
              "Anna",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xff344054),
              ),
            ),
          ],
        ),
        const Spacer(),

        CircleAvatar(
          radius: 21,
          backgroundColor: Color(0xffF2F4F7),
          child: Image.asset("assets/notification.png", height: 20.0),
        ),
      ],
    ).marginSymmetric(horizontal: 20.0);
  }

  Widget location() {
    return Row(
      children: [
        Icon(Icons.location_on, color: Color(0xffD0D5DD)),
        Gap(8),
        Text(
          "Dhaka, Bangladesh",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xffD0D5DD),
          ),
        ),
      ],
    ).marginSymmetric(horizontal: 20.0);
  }

  Widget search() {
    return Container(
      width: Get.width,
      height: 40,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Color(0xffF2F4F7),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Image.asset("assets/search.png"),
          suffixIcon: Image.asset("assets/filter.png"),
          suffixIconConstraints: BoxConstraints(maxHeight: 18.0),
          prefixIconConstraints: BoxConstraints(maxHeight: 24.0),
          border: InputBorder.none,
          fillColor: Color(0xffF2F4F7),
          filled: true,
          hintText: "Search here",
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff98A2B3),
          ),
        ),
      ),
    );
  }

  Widget plantCategories() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categories",
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
        ),
        Gap(10),

        SizedBox(
          height: 42,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: plantcontroller.categories.length,
            itemBuilder: (context, index) {
              return Obx(() {
                final bool isSelected =
                    plantcontroller.selectedCategoryIndex.value == index;
                return GestureDetector(
                  onTap: () {
                    plantcontroller.selectCategory(index);
                  },
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    margin: EdgeInsets.only(right: 10.0),
                    decoration: BoxDecoration(
                      color: isSelected ? Color(0xff475E3E) : Color(0xffF2F4F7),
                      borderRadius: BorderRadius.circular(29.0),
                      border: Border.all(
                        color: isSelected
                            ? Color(0xff475E3E)
                            : Color(0xffD0D5DD),
                        width: isSelected ? 1.0 : 1.5,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        plantcontroller.categories[index],
                        style: TextStyle(
                          fontWeight: isSelected
                              ? FontWeight.w600
                              : FontWeight.w400,
                          fontSize: 16,
                          color: isSelected ? Colors.white : Color(0xff475E3E),
                        ),
                      ),
                    ),
                  ),
                );
              });
            },
          ),
        ),
      ],
    ).marginSymmetric(horizontal: 20.0);
  }

  Widget plantListCardView() {
    return Expanded(
      child: Obx(() {
        return GridView.builder(
          padding: const EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.86,
          ),
          itemCount: plantcontroller.plants.length,
          itemBuilder: (context, index) {
            final plant = plantcontroller.plants[index];

            return Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xffF0F4EF),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    child: InkWell(
                      onTap: () {
                        plantcontroller.toggleFavorite(index);
                      },
                      child: Obx(
                        () => CircleAvatar(
                          backgroundColor: const Color(0xffB5C9AD),
                          radius: 12,
                          child: Icon(
                            Icons.favorite,
                            color: plant.isFav.value
                                ? Colors.red
                                : Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Column(
                    children: [
                      Image.asset(plant.image, height: 140),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                plant.name,
                                style: const TextStyle(fontSize: 14),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  "\$${plant.price}",
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const CircleAvatar(
                            backgroundColor: Color(0xffB5C9AD),
                            radius: 12,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      }),
    );
  }
}
