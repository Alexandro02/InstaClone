import 'package:flutter/material.dart';
import 'package:insta_clone/screens/home_screen.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Widget pageToNav;
  final Color? color;
  final Color? tColor;

  const CustomButton({
    Key? key,
    required this.text,
    this.pageToNav = const HomePage(),
    required this.color,
    required this.tColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => pageToNav,
        ),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(40),
        backgroundColor: color,
        shadowColor: Colors.transparent,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: tColor,
          fontSize: 14,
        ),
      ),
    );
  }
}
