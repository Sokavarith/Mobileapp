import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'videos_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(50))),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                  title: Text('Hi Rith',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Colors.greenAccent)),
                  subtitle: Text(
                    'Good morning',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white54),
                  ),
                  trailing: const CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('assets/Images/Avatar_Aang.png')),
                )
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(100))),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                children: [
                  itemDashboard('Videos', CupertinoIcons.play_rectangle,
                      Colors.deepOrange, () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VideosScreen()));
                  }),
                  itemDashboard(
                      'Analytics', CupertinoIcons.graph_circle, Colors.green,
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VideosScreen()));
                  }),
                  itemDashboard(
                      'Audiences', CupertinoIcons.person_2, Colors.purple, () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VideosScreen()));
                  }),
                  itemDashboard(
                      'Comments', CupertinoIcons.chat_bubble_2, Colors.brown,
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VideosScreen()));
                  }),
                  itemDashboard(
                      'About', CupertinoIcons.question_circle, Colors.indigo,
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VideosScreen()));
                  }),
                  itemDashboard(
                      'Contacts', CupertinoIcons.phone, Colors.teal, () {})
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  itemDashboard(String title, IconData iconData, Color background,
          VoidCallback onTap) =>
      GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 5),
                  color: Theme.of(context).primaryColor.withOpacity(.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                )
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: background,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  iconData,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
              )
            ],
          ),
        ),
      );
}
