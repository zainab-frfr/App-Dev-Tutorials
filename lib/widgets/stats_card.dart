import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  final String stat;
  final String label;
  const StatsCard({super.key, required this.stat, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(stat, style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFF77F00), fontSize: 25),),
        Text(label, style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black, fontSize: 15),),
      ],
    );
  }
}