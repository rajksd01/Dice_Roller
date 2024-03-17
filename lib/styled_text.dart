import 'package:flutter/material.dart';

class TextData extends StatelessWidget {
  const TextData(this.data, {super.key});
  final String data;
  @override
  Widget build(context) {
    return Text(
      data,
      style: const TextStyle(color: Colors.red, fontSize: 32),
    );
  }
}
