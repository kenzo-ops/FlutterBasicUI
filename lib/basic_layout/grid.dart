import 'package:flutter/material.dart';

class GridViewlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List of images or items for the grid
    final List<String> items = [
      'Manchester United',
      'Liverpool',
      'Arsenal',
      'Chelsea',
      'Manchester City',
      'Tottenham Hotspur',
      'West Ham United',
      'Leicester City',
      'Everton',
      'Wolverhampton Wanderers',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Football Clubs Grid'),
        backgroundColor: Colors.red,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of items in a row
          crossAxisSpacing: 10, // Space between columns
          mainAxisSpacing: 10, // Space between rows
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            color: Colors.red[100],
            child: InkWell(
              onTap: () {
                // Action when the grid item is tapped
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('You tapped'),
                      content: Text('You selected: ${items[index]}'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Center(
                child: Text(
                  items[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
