import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socket_test/view/web_socket/web_socket_controller/web_socket_controller.dart';

class WebSocketPage extends StatelessWidget {
  const WebSocketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WebSocketController>(builder: (controller) {
      return Scaffold(
          appBar: AppBar(
            title: const Text('Web Socket'),
            centerTitle: true,
          ),
          body: Obx(() {
            return controller.messageList == null
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: controller.messageList.length,
                    itemBuilder: (context, index) {
                      return Text(controller.messageList[index]);
                    });
          }),
          bottomNavigationBar: Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            margin: const EdgeInsets.all(16),
            child: Card(
              elevation: 1,
              color: Colors.blue,
              child: Row(
                children: const [
                  Expanded(child: TextField())
                ],
              ),
            ),
          ),
      );
    });
  }
}
