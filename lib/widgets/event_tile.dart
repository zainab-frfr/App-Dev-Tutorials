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
            aspectRatio: 1.5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                width: 300,
                height: 300,
                child: Image.asset('assets/images/event.png', fit: BoxFit.cover,),
              ),
            ),
          ),
          title: Text('Event Name', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('30 November 2024, 11:00 PM',  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12, color: Color(0xFF929292))),
              Text('13th Street, Park Avenue',  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12, color: Color(0xFF929292))),
              Text('John Doe',  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12, color: Color(0xFF929292))),
            ],
          ),
        ),
      ),
    );
  }
}
