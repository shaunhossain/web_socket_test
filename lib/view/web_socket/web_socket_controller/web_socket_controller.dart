import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:web_socket_channel/io.dart';

class WebSocketController extends GetxController{
  final TextEditingController textEditingController = TextEditingController();

  final _channel = IOWebSocketChannel.connect(Uri.parse(
      'wss://demo.piesocket.com/v3/channel_1?api_key=VCXCEuvhGcBDP7XhiJJUDvR1e1D3eiVjgZ9VRiaV&notify_self'));
  final messageList = [].obs;


  @override
  void onInit() {
    _channel.stream.listen((message) {
      if(message != 'Hello world!'){
        messageList.add(message);
      }
    });
    super.onInit();
  }

  void insertData(){
    if(textEditingController.text.isNotEmpty){
      _channel.sink.add(textEditingController.text);
    }else{
      _channel.sink.add('empty');
    }
  }

  @override
  void dispose() {
    _channel.sink.close();
    super.dispose();
  }
}