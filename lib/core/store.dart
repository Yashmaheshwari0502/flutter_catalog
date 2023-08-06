import 'package:velocity_x/velocity_x.dart';

import '../model/cart.dart';
import '../model/catlog.dart';

class MyStore extends VxStore {
  late CatalogModel catalog;
  late CartModel cart;

  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
