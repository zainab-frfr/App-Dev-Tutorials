import 'package:flutter/material.dart';

class MyTabButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  final bool currSelected;

  const MyTabButton({super.key, required this.text, required this.onTap, required this.currSelected});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 9),
        child: Text(text, style: TextStyle(color: (currSelected)?Color(0xFFD62828):Color(0xFF575757), fontSize: 18, fontWeight: FontWeight.w600),),
      ),
    );
  }
}