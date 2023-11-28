import 'package:flutter/material.dart';
import 'package:umarket/ui/homepage.dart';

class RouteGenerate {
  static final RouteGenerate _router = RouteGenerate._init();
  static RouteGenerate get router => _router;
  RouteGenerate._init();

  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return _navigate(const HomePage());
    }

    return null;
  }

  MaterialPageRoute _navigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
