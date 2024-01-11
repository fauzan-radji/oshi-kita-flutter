import 'package:flutter/material.dart';
import 'package:oshi_kita/ui/screen/home.dart';

class Routes {
  static Map<String, WidgetBuilder> create(BuildContext context) {
    return {
      HOME: (context) {
        return Home();
      }
    };
  }

  static String HOME = "/home";
}