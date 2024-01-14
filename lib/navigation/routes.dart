import 'package:flutter/material.dart';
import 'package:oshi_kita/ui/screen/detail/detail.dart';
import 'package:oshi_kita/ui/screen/home/home.dart';
import 'package:oshi_kita/ui/screen/splash.dart';

class Routes {
  static Map<String, WidgetBuilder> create(BuildContext context) {
    return {
      splash: (context) {
        return const Splash();
      },
      home: (context) {
        return const Home();
      },
      detail: (context) {
        final int id = ModalRoute.of(context)!.settings.arguments as int? ?? 1;
        return Detail(id: id);
      },
    };
  }

  static String splash = "/";
  static String home = "/home";
  static String detail = "/detail";
}