import 'package:flutter/cupertino.dart';
import 'package:satsetsatset/add_page.dart';
import 'package:satsetsatset/home_page.dart';

class AppRoutes {
  static const String homePage = '/home_page';
  static const String addPage = '/add_page';

  static Map<String, WidgetBuilder> routes = {
    homePage: (context) => const HomePage(),
    addPage: (context) => const AddPage()
  };
}
