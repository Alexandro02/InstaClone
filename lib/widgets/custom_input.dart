import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String text;
  final double padding;
  final double fSize;
  final Icon? icon;

  const CustomInput({
    Key? key,
    required this.text,
    required this.padding,
    required this.fSize,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey[300]!,
          ),
        ),
        contentPadding: EdgeInsets.all(padding),
        hintText: text,
        suffixIcon: icon,
      ),
      style: TextStyle(
        fontSize: fSize,
        fontWeight: FontWeight.bold,
        color: const Color.fromARGB(143, 245, 245, 245),
      ),
    );
  }
}
