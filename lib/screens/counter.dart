import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx/controllers/CounterScreenController.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    final Counterscreencontroller controller = Get.put(
      Counterscreencontroller(),
    );
    return Scaffold(
     
      body: Center(
        child: Column(
          children: [
            Obx(() {
              return Text(
                controller.counter.toString(),
                style: TextStyle(fontSize: 24),
              );
            }),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                // Action to increase counter
                controller.increment();
                print(controller.counter.toString());
              },
              child: Text('Increase Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
