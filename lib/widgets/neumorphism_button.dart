import 'package:flutter/material.dart';
import 'package:flutter_gallery_mn/widgets/neumorphism_container.dart';

class NeumorphismButton extends StatefulWidget {
  const NeumorphismButton({
    Key? key,
    this.onPressed,
    this.child,
    this.margin,
    this.padding,
    this.height,
    this.width,
    this.borderRadius,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Widget? child;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;

  @override
  State<NeumorphismButton> createState() => _NeumorphismButtonState();
}

class _NeumorphismButtonState extends State<NeumorphismButton> {
  late BorderRadius _borderRadius;

  @override
  void initState() {
    _borderRadius = widget.borderRadius ?? BorderRadius.circular(50);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onSurface: Colors.orange,
          shadowColor: Colors.red,
          padding: widget.padding,
          // shape: ShapeBorder.lerp(1, b, t),
        ),
        child: widget.child,
      ),
    );

    return InkWell(
      onTap: widget.onPressed,
      borderRadius: _borderRadius,
      child: Container(
        margin: widget.margin,
        padding: widget.padding,
        height: widget.height ?? 50.0,
        width: widget.width ?? double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: _borderRadius,
          boxShadow: [
            // Shadow for top-left corner
            const BoxShadow(
              color: Colors.grey,
              offset: Offset(10, 10),
              blurRadius: 6,
              spreadRadius: 1,
            ),
            // Shadow for bottom-right corner
            const BoxShadow(
              color: Colors.white12,
              offset: Offset(-10, -10),
              blurRadius: 6,
              spreadRadius: 1,
            ),
          ],
        ),
        child: widget.child,
      ),
    );
  }
}

//     return Container(
//       margin: widget.margin,
//       padding: widget.padding,
//       decoration: BoxDecoration(
//         color: Colors.grey[300],
//         borderRadius: widget.borderRadius,
//         boxShadow: [
//           // Shadow for top-left corner
//           const BoxShadow(
//             color: Colors.grey,
//             offset: Offset(10, 10),
//             blurRadius: 6,
//             spreadRadius: 1,
//           ),
//           // Shadow for bottom-right corner
//           const BoxShadow(
//             color: Colors.white12,
//             offset: Offset(-10, -10),
//             blurRadius: 6,
//             spreadRadius: 1,
//           ),
//         ],
//       ),
//       child: widget.child,
//     );
