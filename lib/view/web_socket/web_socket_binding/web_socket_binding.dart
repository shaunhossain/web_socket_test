import 'package:get/get.dart';
import 'package:socket_test/view/web_socket/web_socket_controller/web_socket_controller.dart';

class WebSocketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WebSocketController>(()=> WebSocketController());
  }
}