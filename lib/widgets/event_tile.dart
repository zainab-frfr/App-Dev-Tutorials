import 'package:flutter/material.dart';

class MyEventTile extends StatelessWidget {
  const MyEventTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Material(
                  elevation: 10,
                  child: ListTile(
                  
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset('assets/images/event.png', fit: BoxFit.cover,)
                      ),
                    title: Text(
                      'Event Name', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        fontSize: 15,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('30 November 2024, 9:00 AM'),
                        Text('13th Street, Park Avenue'),
                        Text('John Doe'),
                      ],
                    ),
                  ),
                ),
              );
  }
}