import 'package:flutter/material.dart';
import 'package:flutter_catlog/pages/cart_page.dart';
import 'package:flutter_catlog/pages/home_page.dart';
import 'package:flutter_catlog/pages/login_page.dart';
import 'package:flutter_catlog/utils/routes.dart';
import 'package:flutter_catlog/widget/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'core/store.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutess.cartpage,
      // home: HomePage(),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutess.homepage: (context) => HomePage(),
        MyRoutess.loginpage: (context) => LoginPage(),
        MyRoutess.cartpage: (context) => CartPage(),
      },
    ));
  }
}
