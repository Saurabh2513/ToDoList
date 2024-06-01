import 'package:flutter/material.dart';
import 'package:to_do/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;


   DialogBox({
    super.key,
    required this.controller,
    required this.onCancel,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.purple[200],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add a New Task!!"),
            ),

            // button Save => Yes , Cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Save Button
                MyButton(
                  text: "Save",
                  onPressed: onSave,
                ),
                const SizedBox(
                  width: 8,
                ),
                // Cancel Button
                MyButton(
                  text: "Cancel",
                  onPressed: onCancel,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
