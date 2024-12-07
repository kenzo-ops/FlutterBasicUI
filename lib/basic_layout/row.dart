import 'package:flutter/material.dart';

class rowLay extends StatelessWidget {
  const rowLay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Layout'),
      ),
      body: 
      Row(
         children: [
          Text("This Text is in row")
        ]),
      );
  }
}