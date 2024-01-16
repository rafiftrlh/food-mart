import 'package:flutter/material.dart';
import 'package:gurutamu_mart/utils/routers.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Food App",
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple, onBackground: Colors.pink),
          useMaterial3: true),
    );
  }
}
