import 'package:velocity_x/velocity_x.dart';

import '../model/cart.dart';
import '../model/catlog.dart';

class MyStore extends VxStore {
  CatalogModel catalog;
  CartModel cart;

  MyStore() {
    catalog  = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
