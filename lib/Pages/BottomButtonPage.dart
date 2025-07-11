import 'package:flutter/material.dart';

class BottomButtonPage extends StatelessWidget {
  const BottomButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Button Example")),
      body: SafeArea(
        child: Column(
          children: [
            // Your content here
            const Expanded(child: Center(child: Text("Page Content"))),

            // Button at the bottom
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Button action
                  },
                  child: const Text("Submit"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
