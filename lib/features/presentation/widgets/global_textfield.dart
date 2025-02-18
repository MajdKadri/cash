import 'package:flutter/material.dart';

class GlobalTextfield extends StatelessWidget {
  TextEditingController controller = TextEditingController();
   GlobalTextfield({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.yellow.shade800)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),

        ),
      ),
    );
  }
}
