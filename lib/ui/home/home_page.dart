import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utils/router.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home page')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  context.go(Routes.shop);
                },
                child: const Text('Shop'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
