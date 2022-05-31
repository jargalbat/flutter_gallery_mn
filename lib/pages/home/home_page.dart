import 'package:flutter/material.dart';
import 'package:flutter_gallery_mn/widgets/neumorphism_button.dart';
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
                // ElevatedButton(
                //   onPressed: () {
                //     context.go(Routes.shop);
                //   },
                //   child: const Text('Shop'),
                // ),
                ElevatedButton(
                  onPressed: () {
                    context.go(Routes.buttons);
                  },
                  child: const Text('Buttons'),
                ),
              ],
            ),

            // SizedBox(height: 123),
            // NeumorphismButton(
            //   // onPressed: () {},
            //   child: const Icon(
            //     Icons.dangerous,
            //     size: 100,
            //   ),
            //   padding: EdgeInsets.all(50.0),
            // ),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     primary: Colors.red, // background
            //     onPrimary: Colors.white, // foreground
            //   ),
            //   onPressed: () {},
            //   child: Text('ElevatedButton with custom foreground/background'),
            // ),
            // TextButton(
            //   style: ButtonStyle(
            //     foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            //   ),
            //   onPressed: () {},
            //   child: Text('TextButton'),
            // )
          ],
        ),
      ),
    );
  }
}
