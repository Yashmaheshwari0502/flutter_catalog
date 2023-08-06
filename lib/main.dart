import 'package:flutter/material.dart';
import 'package:flutter_catlog/pages/cart_page.dart';
import 'package:flutter_catlog/pages/home_page.dart';
import 'package:flutter_catlog/utils/routes.dart';
import 'package:flutter_catlog/widget/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import '../pages/login_Page.dart';
import 'core/store.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
