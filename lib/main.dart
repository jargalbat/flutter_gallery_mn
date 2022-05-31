import 'package:flutter/material.dart';
import 'package:flutter_gallery_mn/ui/home/home_page.dart';

import 'utils/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      title: 'Flutter gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
