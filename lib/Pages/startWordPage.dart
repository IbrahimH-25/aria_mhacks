import 'package:flutter/material.dart';

import 'package:aria_mhacks/Scripts/geminiPrompter.dart';

class InputWordPage extends StatelessWidget {
  final TextEditingController _wordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter a Word"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _wordController,
              decoration: InputDecoration(
                hintText: "Enter your word",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                String word = _wordController.text.trim();
                // Process the entered word here (e.g., display, store)
                if (word.isNotEmpty) {
                  print("You entered: $word");
                  final returnedPrompt = geminiPromter().sentancePrompt(word);
                  print(returnedPrompt);
                }
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
