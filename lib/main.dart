import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(appName),
        ),
        body: const Center(
          child: Text(
            appName,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}