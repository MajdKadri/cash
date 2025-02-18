import 'package:flutter/material.dart';

class VerificationInput extends StatefulWidget {
  const VerificationInput({super.key});

  @override
  _VerificationInputState createState() => _VerificationInputState();
}

class _VerificationInputState extends State<VerificationInput> {
  final List<FocusNode> _focusNodes = List.generate(6, (index) => FocusNode());
  final List<String> _values = List.filled(6, '');

  @override
  void initState() {
    super.initState();
    for (var focusNode in _focusNodes) {
      focusNode.addListener(() {
        setState(() {});
      });
    }
  }

  @override
  void dispose() {
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(6, (index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          child: TextField(
            focusNode: _focusNodes[index],
            maxLength: 1,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              counterText: '',
              filled: true,
              fillColor: _focusNodes[index].hasFocus ? Colors.yellow : Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
            onChanged: (value) {
              _values[index] = value;
              if (value.isNotEmpty && index < 5) {
                FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
              } else if (value.isEmpty && index > 0) {
                FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
              }
            },
          ),
        );
      }),
    );
  }
}