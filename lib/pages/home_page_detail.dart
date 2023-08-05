import 'package:flutter/material.dart';
import 'package:flutter_catlog/widget/home%20widget/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_catlog/model/catlog.dart';

import '../widget/theme.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.canvasColor,
        elevation: 0.0,
      ),
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}"
                .text
                .color(MyTheme.darkBluishColor)
                .bold
                .xl4
                .make(),
           AddToCart(catalog: catalog,).wh(100, 50),
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.image),
              child: Image.network(catalog.image).h32(context),
            ),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl4
                          .color(context.theme.secondaryHeaderColor)
                          .bold
                          .make(),
                      catalog.desc.text
                          .textStyle(context.captionStyle!)
                          .xl
                          .make(),
                      10.heightBox,
                      "Dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation"
                          .text
                          .textStyle(context.captionStyle!)
                          .make()
                          .p16(),
                    ],
                  ).p64(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
