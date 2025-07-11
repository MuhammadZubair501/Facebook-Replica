import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ButtonAtBottomInBody());
  }
}

class ButtonAtBottomInBody extends StatelessWidget {
  const ButtonAtBottomInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button at Bottom in Body")),
      body: Column(
        children: [
          // Your content
          Expanded(
            child: Center(
              child: Text("Content goes here", style: TextStyle(fontSize: 20)),
            ),
          ),

          // Button at the bottom
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity, // Full width button
              child: ElevatedButton(
                onPressed: () {
                  print("Button pressed");
                },
                child: Text("Continue"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
