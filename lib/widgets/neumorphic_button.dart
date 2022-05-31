import 'package:flutter/material.dart';

import 'neumorphic_container.dart';

class NeumorphicButton extends StatefulWidget {
  const NeumorphicButton({
    Key? key,
    this.onPressed,
    required this.child,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Widget child;

  @override
  State<NeumorphicButton> createState() => _NeumorphicButtonState();
}

class _NeumorphicButtonState extends State<NeumorphicButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      child: NeumorphicContainer(
        color: Colors.white,
        child: widget.child,
      ),
    );
  }
}
