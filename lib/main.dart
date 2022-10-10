import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socket_test/view/components/navigator/app_pages.dart';
import 'package:socket_test/view/components/navigator/app_routes.dart';
import 'package:socket_test/view/components/themes/themes.dart';
import 'package:socket_test/view/services/theme_service/theme_service.dart';
import 'package:socket_test/view/web_socket/web_socket_binding/web_socket_binding.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BariKoi Map demo",
      initialBinding: WebSocketBinding(),
      initialRoute: AppRoutes.webSocketPage,
      getPages: AppPages.list,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
    );
  }
}
