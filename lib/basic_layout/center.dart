import 'package:flutter/material.dart';

class centerLay extends StatelessWidget {
  const centerLay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Center Layout'),
      ),
      body: Center(
        child: Text("This Text is centered")
        ),
      );
  }
}