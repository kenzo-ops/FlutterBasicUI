import 'package:flutter/material.dart';

class columnLay extends StatelessWidget {
  const columnLay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column Layout'),
      ),
      body: Column(
         children: [
          Text("This Text is in column")
        ]),
      );
  }
}