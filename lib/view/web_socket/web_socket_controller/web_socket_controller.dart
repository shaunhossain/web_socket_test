import 'package:get/get.dart';
import 'package:web_socket_channel/io.dart';

class WebSocketController extends GetxController{

  var channel = IOWebSocketChannel.connect(Uri.parse(
      'wss://demo.piesocket.com/v3/channel_1?api_key=VCXCEuvhGcBDP7XhiJJUDvR1e1D3eiVjgZ9VRiaV&notify_self'));
  final messageList = [].obs;


  @override
  void onInit() {
    channel.stream.listen((message) {
      messageList.add(message);
    });
    Future.delayed(const Duration(seconds: 3),(){
      channel.sink.add('shaun');
    });
    super.onInit();
  }
}