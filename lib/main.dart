import 'package:flutter/material.dart';
import 'package:oshi_kita/navigation/routes.dart';

void main() {
  runApp(const MyApp());
}

const appName = "Oshi Kita";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      initialRoute: "/home",
      routes: Routes.create(context)
    );
  }
}
