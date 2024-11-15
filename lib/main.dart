// main.dart
import 'package:cen_store_webpage/screen/purchase_page.dart';
import 'package:flutter/material.dart';
import 'package:cen_store_webpage/screen/home_screen_content.dart';
import 'package:cen_store_webpage/widget/main_layout.dart';
import 'package:cen_store_webpage/screen/item_view_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => MainLayout(body: HomeScreenContent()),
        '/item': (context) => MainLayout(body: ItemViewPage()),
        '/purchase': (context) => MainLayout(body: PurchasePage()),
        // 다른 페이지 경로 추가
      },
    );
  }
}
