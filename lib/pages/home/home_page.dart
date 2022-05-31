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
      appBar: AppBar(
        title: const Text('Flutter Gallery'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Wrap(
              spacing: 20.0,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.go(Routes.buttons);
                  },
                  child: const Text('Buttons'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
