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
                  reverse: true,
                  itemBuilder: (context, index) {
                    return Text(controller.messageList[index]);
                  });
        }),
        bottomSheet: Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          color: Colors.transparent,
          margin: const EdgeInsets.all(16),
          child: Card(
            elevation: 1,
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                      controller: controller.textEditingController,
                      decoration:
                          const InputDecoration(border: OutlineInputBorder())),
                ),
                IconButton(
                    onPressed: () {
                      controller.insertData();
                    },
                    icon: const Icon(Icons.send)),
              ],
            ),
          ),
        ),
      );
    });
  }
}
