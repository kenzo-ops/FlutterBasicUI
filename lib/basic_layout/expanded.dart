import 'package:flutter/material.dart';

class Expandedlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Layout'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          // Row with Expanded widgets
          Row(
            children: [
              // First container without Expanded (fixed width)
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Fixed Width',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              // First Expanded widget (takes up remaining space)
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'Expanded 1',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              // Second Expanded widget (takes up remaining space)
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      'Expanded 2',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // Space between the rows
          // Row with Expanded and flexible containers
          Row(
            children: [
              // First Expanded widget with flex factor of 2 (takes twice the space)
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  color: Colors.purple,
                  child: Center(
                    child: Text(
                      'Flex 2',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              // Second Expanded widget with flex factor of 1 (takes less space)
              Expanded(
                flex: 1,
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Flex 1',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
