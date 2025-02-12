import 'package:flutter/material.dart';
import 'package:tutorial_1/widgets/comment_tile.dart';
import 'package:tutorial_1/widgets/custom_appbar.dart';
import 'package:tutorial_1/widgets/custom_tab_button.dart';
import 'package:tutorial_1/widgets/event_tile.dart';
import 'package:tutorial_1/widgets/stats_card.dart';

class MyProfilePage extends StatefulWidget {
  static MaterialPageRoute route() => MaterialPageRoute(
        builder: (context) => const MyProfilePage(),
      );

  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  String selectedTab = 'Posts';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              AppBar(
                shape: CustomAppBarShape(),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 56 * 3.5 * 0.75,
                    ),
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.black,
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
                                color: Color(0xFFD62828),
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
                    Padding(
                        padding:
                            EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                MyTabButton(
                                  text: 'Posts',
                                  onTap: () {
                                    setState(() {
                                      selectedTab = 'Posts';
                                    });
                                  },
                                  currSelected: selectedTab == 'Posts',
                                ),
                                MyTabButton(
                                  text: 'Comments',
                                  onTap: () {
                                    setState(() {
                                      selectedTab = 'Comments';
                                    });
                                  },
                                  currSelected: selectedTab == 'Comments',
                                ),
                                MyTabButton(
                                  text: 'Stats',
                                  onTap: () {
                                    setState(() {
                                      selectedTab = 'Stats';
                                    });
                                  },
                                  currSelected: selectedTab == 'Stats',
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Container(
                              height: 1,
                              color: Color(0xFF575757),
                            ),
                      
                          ],
                        )),
                    (selectedTab == 'Posts')
                        ? SizedBox(
                            height: MediaQuery.sizeOf(context).height *0.35,
                            child: ListView.builder(
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, bottom: 20),
                                    child: Column(
                                      children: [
                                        EventTile(),
                                        SizedBox(height: 20)
                                      ],
                                    ),
                                  );
                                }),
                          )
                        : (selectedTab == 'Comments')
                            ? SizedBox(
                                height: MediaQuery.sizeOf(context).height *0.35,
                                child: ListView.builder(
                                    itemCount: 4,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, bottom: 20),
                                        child: Column(
                                          children: [
                                            CommentTile(),
                                            SizedBox(height: 20)
                                          ],
                                        ),
                                      );
                                    }),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 20, right: 20, bottom: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    StatsCard(stat: '19', label: 'Posts'),
                                    StatsCard(stat: '32', label: 'Comments'),
                                  ],
                                ),
                              )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
