import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/page/auth/auth_page.dart';
import 'package:shopping/page/cart/cart.dart';
import 'package:shopping/page/category/category.dart';
import 'package:shopping/page/home/home.dart';
import 'package:shopping/page/order/list_order.dart';
import 'package:shopping/page/product/product.dart';
import 'package:shopping/providers/auth_provider.dart';
import 'package:shopping/providers/cart_provider.dart';
import 'package:shopping/providers/category_provider.dart';
import 'package:shopping/providers/order_provider.dart';
import 'package:shopping/providers/product_provider.dart';
import 'package:shopping/providers/slider_provider.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SliderProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CategoryProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => OrderProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomePage.routerName,
        routes: {
          HomePage.routerName: (context) => const HomePage(),
          CategoryPage.routerName: (context) => const CategoryPage(),
          ProductPage.routerName: (context) => const ProductPage(),
          AuthPage.routerName: (context) => AuthPage(),
          CartPage.routerName: (context) => const CartPage(),
          ListOrder.routerName: (context) => const ListOrder(),
        },
      ),
    ),
  );
}
