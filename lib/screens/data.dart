import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/DataScreenController.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dataController = Get.put(Datascreencontroller());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action to perform
          dataController.showBottomSheet();
        },
        child: Icon(Icons.add),
      ),

      body: Center(
        child: Obx(
          () => ListView.separated(
            itemBuilder: (context, index) {
              final data = dataController.dataList[index];
              return ListTile(
                title: Text(data['title'] ?? ''),
                subtitle: Text(data['description'] ?? ''),
              );
            },
            separatorBuilder: (context, index) =>
                const Divider(thickness: 1, color: Colors.grey),
            itemCount: dataController.dataList.length,
          ),
        ),
      ),
    );
  }
}
