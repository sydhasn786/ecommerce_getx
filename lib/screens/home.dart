import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/HomeScreenController.dart';
import 'package:getx/screens/counter.dart';
import 'package:getx/screens/maps.dart';
import 'package:getx/screens/settings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  
  @override
  Widget build(BuildContext context) {
    final navigationController = Get.put(Homescreencontroller());
    
    return Scaffold(
      appBar: AppBar(title: const Text('Main Screen')),
      body: Obx (() => navigationController.pages[navigationController.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          selectedIndex: navigationController.selectedIndex.value,
          onDestinationSelected: (value) {
           
              navigationController.selectedIndex.value = value;

          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.map), label: 'Maps'),
            NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
