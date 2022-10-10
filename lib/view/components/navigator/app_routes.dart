import 'package:get/get.dart';
import 'package:socket_test/view/web_socket/web_socket.dart';
import 'package:socket_test/view/web_socket/web_socket_binding/web_socket_binding.dart';
import 'app_pages.dart';

class AppPages {
  static var list = [
    GetPage(
        name: AppRoutes.webSocketPage,
        page: () => const WebSocketPage(),
        binding: WebSocketBinding(),
        transition: Transition.leftToRight),
  ];
}
