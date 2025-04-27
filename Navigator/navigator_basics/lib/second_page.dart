// Second Page
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String message;
  const SecondPage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              "Data from second page",
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Welcome to Second Page!'),
            Text("Data from First Page: $message"),
          ],
        ),
      ),
    );
  }
}
