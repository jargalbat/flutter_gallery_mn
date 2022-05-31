import 'package:flutter/material.dart';
import '../widgets/neumorphic_container.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  State<ButtonsPage> createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      // backgroundColor: Colors.white,
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _defaultButtons(onPressed: () {}),
            const SizedBox(height: 20.0),
            _defaultButtons(),
            const SizedBox(height: 20.0),
            _customButtons(onPressed: () {}),
            const SizedBox(height: 20.0),
            _customButtons(),
            const SizedBox(height: 20.0),
            _neumorphicButton(),
          ],
        ),
      ),
    );
  }

  Widget _defaultButtons({VoidCallback? onPressed}) {
    return Wrap(
      spacing: 20.0,
      children: [
        ElevatedButton(
          onPressed: onPressed,
          child: const Text('ElevatedButton'),
        ),
        const SizedBox(height: 20.0),
        TextButton(
          onPressed: onPressed,
          child: const Text('TextButton'),
        ),
        const SizedBox(height: 20.0),
        OutlinedButton(
          onPressed: onPressed,
          child: const Text('OutlinedButton'),
        ),
        const SizedBox(height: 20.0),
        IconButton(
          onPressed: onPressed,
          tooltip: 'IconButton',
          icon: const Icon(Icons.accessibility_new_rounded),
        ),
      ],
    );
  }

  Widget _customButtons({VoidCallback? onPressed}) {
    return Wrap(
      spacing: 20.0,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.red, // background
            onPrimary: Colors.white, // foreground
          ),
          onPressed: onPressed,
          child: const Text('ElevatedButton'),
        ),
        const SizedBox(height: 20.0),
        TextButton(
          style: TextButton.styleFrom(
            primary: Colors.blue,
          ),
          onPressed: onPressed,
          child: const Text('TextButton'),
        ),
        const SizedBox(height: 20.0),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: const StadiumBorder(),
            side: const BorderSide(width: 1, color: Colors.red),
          ),
          onPressed: onPressed,
          child: const Text('OutlinedButton'),
        ),
        const SizedBox(height: 20.0),
        Ink(
          decoration: const ShapeDecoration(
            color: Colors.lightBlue,
            shape: CircleBorder(),
          ),
          // height: 70.0,
          // width: 70.0,
          child: IconButton(
            onPressed: onPressed,
            tooltip: 'IconButton',
            color: Colors.white,
            icon: const Icon(Icons.accessibility_new_rounded),
          ),
        ),
      ],
    );
  }

  Widget _neumorphicButton() {
    return NeumorphicContainer(
      color: Colors.white,
      child: const Icon(Icons.accessibility),
    );
  }
}
