import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:getx/screens/plantScreen/dashboard_screen.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [splashImage(), Gap(10), title(), Gap(10), myButton()],
      ),
    );
  }

  Widget splashImage() {
    return ShapeOfView(
      shape: ArcShape(
        direction: ArcDirection.Outside,
        height: 20,
        position: ArcPosition.Bottom,
      ),
      child: Container(
        height: Get.height / 1.4,
        width: Get.width,
        decoration: BoxDecoration(color: Color(0xffF0F4EF)),
        child: Center(child: Image.asset("assets/splash.png")),
      ),
    );
  }

  Widget title() {
    return Text(
      "Create Your Own Garden",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
    );
  }

  Widget myButton() {
    return GestureDetector(
      onTap: () {
        Get.to(DashboardScreen());
      },
      child: Container(
        height: 52,
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        decoration: BoxDecoration(
          color: Color(0xff475E3E),
          borderRadius: BorderRadius.circular(42),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Let's Start",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Gap(10),
            Container(
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
                size: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
