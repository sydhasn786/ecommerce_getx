import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Datascreencontroller extends GetxController {
  static Datascreencontroller get instance => Get.find();

  // variables
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  RxList dataList = [].obs;

  Future<void> showBottomSheet() async {
    await showModalBottomSheet(
      context: Get.context!,
      builder: (context) {
        return Column(
          children: [
            TextFormField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            TextFormField(
              controller: descriptionController,
              decoration: InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                addData();
              },
              child: Text('Add Data'),
            ),
          ],
        );
      },
    );

   
  }
   void addData() {
      Map<String, String> newData = {
        'title': titleController.text,
        'description': descriptionController.text,
      };
      dataList.add(newData);
      print('Data is added: $newData');
    }
}
