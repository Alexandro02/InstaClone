import 'package:flutter/material.dart';
import 'package:insta_clone/screens/home_screen.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Widget pageToNav;
  final Color? color;
  final Color? tColor;
  final IconData? icon;
  final Color? iColor;
  final double? zText;

  const CustomButton({
    Key? key,
    required this.text,
    this.pageToNav = const HomePage(),
    required this.color,
    required this.tColor,
    this.icon,
    this.iColor,
    this.zText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
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
      icon: Icon(
        icon,
        color: iColor,
        size: 18,
      ),
      label: Text(
        text,
        style: TextStyle(
          color: tColor,
          fontSize: zText,
        ),
      ),
    );
  }
}
