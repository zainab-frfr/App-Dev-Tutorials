import 'package:flutter/material.dart';

class EventTile extends StatelessWidget {
  const EventTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: ListTile(
          leading: AspectRatio(
            aspectRatio: 1.4,
            child: ClipRRect(
            
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: Colors.blueGrey,
                width: 300,
                height: 300,
              ),
            ),
          ),
          title: Text('Event Name', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('30 November 2024, 11:00 PM',  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12, color: Color(0xFF929292))),
              Text('Gulshan-e-Iqbal, Karachi',  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12, color: Color(0xFF929292))),
              Text('Shayan Hussain',  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12, color: Color(0xFF929292))),
            ],
          ),
        ),
      ),
    );
  }
}
