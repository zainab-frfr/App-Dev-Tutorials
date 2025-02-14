import 'package:flutter/material.dart';
import 'package:tutorial_1/widgets/custom_appbar.dart';
import 'package:tutorial_1/widgets/event_tile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            children: [
              AppBar(
                shape: CustomAppBarShape(),
                backgroundColor: Colors.blueGrey,
              ),
              Container(
                height: 56 * 4.0 * 0.65,
              ),
              ClipOval(
                child: Image.asset(
                  'assets/images/pfp.jpg',
                  width: 110,
                  height: 110,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 5,),
              Text(
                'John Doe',
                style: TextStyle(
                    color: const Color.fromARGB(255, 58, 68, 72),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'John Doe exists. John Doe builds. John Doe innovates. What’s next? Only time will tell...',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20 ,), 

              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.40,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        MyEventTile(),
                        const SizedBox(height: 20,)
                      ],
                    );
                  },
                  ),
              )
            ],
          ),
        ));
  }
}
