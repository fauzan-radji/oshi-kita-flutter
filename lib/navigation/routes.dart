import 'package:flutter/material.dart';
import 'package:oshi_kita/ui/screen/detail/detail.dart';
import 'package:oshi_kita/ui/screen/home/home.dart';

class Routes {
  static Map<String, WidgetBuilder> create(BuildContext context) {
    return {
      HOME: (context) {
        return const Home();
      },
      DETAIL: (context) {
        final int id = ModalRoute.of(context)!.settings.arguments as int? ?? 1;
        return Detail(id: id);
      },
    };
  }

  static String HOME = "/home";
  static String DETAIL = "/detail";
}