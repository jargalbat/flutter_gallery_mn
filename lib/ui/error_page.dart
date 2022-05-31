import 'package:flutter/material.dart';

class ErrorPage extends StatefulWidget {
  final Exception? exception;

  const ErrorPage({Key? key, this.exception}) : super(key: key);

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Error: ${widget.exception?.toString()}'),
      ),
    );
  }
}
