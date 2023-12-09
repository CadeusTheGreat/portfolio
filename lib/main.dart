import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'splash_screen.dart';
import 'about_me/about_me.dart';
import 'technologies/technologies.dart';
import 'timeline/timeline.dart';
import 'more.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fractware Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightBlue,
          brightness: Brightness.light,
        ),
        fontFamily: 'NotoSans',
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightBlue,
          brightness: Brightness.dark,
        ),
        fontFamily: 'NotoSans',
      ),
      themeMode: ThemeMode.system,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey splashScreenKey = GlobalKey();
  final GlobalKey aboutMeKey = GlobalKey();
  final GlobalKey technologiesKey = GlobalKey();
  final GlobalKey timelineKey = GlobalKey();
  final GlobalKey morePageKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SelectionArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            SplashScreenPage(
              pageKey: splashScreenKey,
              pageKey2: aboutMeKey,
            ),
            AboutMePage(
              pageKey: aboutMeKey,
            ),
            TechnologiesPage(
              pageKey: technologiesKey,
            ),
            TimelinePage(
              pageKey: timelineKey,
            ),
            /*
            MorePage(
              pageKey: morePageKey,
            ),
            */
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            launchUrlString(
                'https://discordapp.com/channels/@me/420342946987114496/');
          },
          icon: const Icon(Icons.discord),
          label: const Text('Get in touch')),
    );
  }
}
