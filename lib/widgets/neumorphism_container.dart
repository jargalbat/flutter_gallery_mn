// import 'package:flutter/material.dart';
//
// class NeumorphismContainer extends StatefulWidget {
//   const NeumorphismContainer({
//     Key? key,
//     this.child,
//     this.margin,
//     this.padding,
//     this.height,
//     this.width,
//     this.borderRadius,
//   }) : super(key: key);
//
//   final Widget? child;
//   final EdgeInsets? margin;
//   final EdgeInsets? padding;
//   final double? width;
//   final double? height;
//   final BorderRadius? borderRadius;
//
//   @override
//   State<NeumorphismContainer> createState() => _NeumorphismContainerState();
// }
//
// class _NeumorphismContainerState extends State<NeumorphismContainer> {
//   @override
//   Widget build(BuildContext context) {
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
//   }
// }
