import 'package:connectivityapp/wifi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  InternetConnectivity internetController = Get.put(InternetConnectivity());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('Your Internet Connectivity Status:' +
                internetController.internetStatus.value)),
            SizedBox(height: 40),
            RaisedButton(
                child: Text('Check Your Internet Connectivity'),
                onPressed: () {
                  internetController.updateConnectivityStatus();
                })
          ],
        ),
      ),
    );
  }
}
