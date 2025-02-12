import 'package:flutter/material.dart';
import 'package:tutorial_1/widgets/curved_arrow.dart';

class CommentTile extends StatelessWidget {
  const CommentTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('Event Name', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
          subtitle: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CurvedArrow(),
              SizedBox(width: 5,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Display the user’s comment here',  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12, color: Color(0xFF929292))),
                  Text('30 November 2024, 11:00 PM',  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12, color: Color(0xFF929292))),
                ],
              ),
            ],
          ),
    );
  }
}