import 'package:flutter/material.dart';
import 'package:tutorial_1/widgets/custom_appbar.dart';
import 'package:tutorial_1/widgets/event_tile.dart';

class MyProfilePage extends StatelessWidget {
  static MaterialPageRoute route() => MaterialPageRoute(
        builder: (context) => const MyProfilePage(),
      );

  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              AppBar(
                shape: CustomAppBarShape(),
                backgroundColor: Colors.blueGrey,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 56 * 3.5 * 0.75,
                  ),
                  CircleAvatar(
                    radius: 56,
                    backgroundColor: Colors.black,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/pfp.jpg',
                        width: 110,
                        height: 110,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'John Doe',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 70, 90, 101),
                              fontSize: 22),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          'John Doe exists. John Doe builds. John Doe innovates. What’s next? Only time will tell...',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF929292),
                              fontSize: 15),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.4,
                    child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                            child: Column(
                              children: [EventTile(), SizedBox(height: 20)],
                            ),
                          );
                        }),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
