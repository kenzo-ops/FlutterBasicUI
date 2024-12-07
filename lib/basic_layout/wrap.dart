import 'package:flutter/material.dart';

class Wraplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Layout'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Wrap(
          spacing: 8.0, // Horizontal space between children
          runSpacing: 4.0, // Vertical space between lines
          alignment: WrapAlignment.center, // Align children in the center
          children: List.generate(20, (index) {
            return Chip(
              label: Text('Item $index'),
              backgroundColor: Colors.blue[(index % 9 + 1) * 100],
            );
          }),
        ),
      ),
    );
  }
}
