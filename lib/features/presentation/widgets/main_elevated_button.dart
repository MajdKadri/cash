import 'package:cash_mobile_v1/core/utils/responsive.dart';
import 'package:flutter/material.dart';

class MainElevatedButton extends StatelessWidget {
  String text ;
  final VoidCallback onpressed;
   MainElevatedButton({super.key, required this.text,required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        width: MediaQueryValues.fullWidth(context) / 1.19,
        child: ElevatedButton(
          onPressed: onpressed,
          child:  Text(
            text,
            style: TextStyle(color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[200]),
        ));
  }
}
