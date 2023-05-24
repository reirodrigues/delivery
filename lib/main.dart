import 'package:delivery_flutter/src/pages/login/login_page.dart';
import 'package:delivery_flutter/src/pages/register/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          primaryColor: Colors.amber,
          colorScheme: const ColorScheme(
            primary: Colors.amber,
            secondary: Colors.amberAccent,
            brightness: Brightness.light,
            onBackground: Colors.grey,
            onPrimary: Colors.grey,
            onSecondary: Colors.grey,
            error: Colors.grey,
            onError: Colors.grey,
            background: Colors.grey,
            surface: Colors.grey,
            onSurface: Colors.grey,
          )),
      debugShowCheckedModeBanner: false,
      title: 'Delivery',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: (() => LoginPage())),
        GetPage(name: '/register', page: (() => const RegisterPage())),
      ],
      navigatorKey: Get.key,
    );
  }
}
