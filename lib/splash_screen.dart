import 'dart:math' as math;
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage(
      {super.key, this.pageKey, this.pageKey2, this.scrollController});

  final GlobalKey? pageKey;
  final GlobalKey? pageKey2;
  final ScrollController? scrollController;

  @override
  State<SplashScreenPage> createState() => SplashScreenPageState();
}

class SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      key: widget.pageKey,
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Image.asset(
          'assets/free_build.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Theme.of(context).colorScheme.background,
              ],
            ),
          ),
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
          ),
        ),
        Column(
          children: <Widget>[
            const CircleAvatar(
              radius: 64, // Image radius
              backgroundImage: NetworkImage(
                  'https://tr.rbxcdn.com/30DAY-AvatarHeadshot-84C8FCE4833331E7BD35BB06267BC97B-Png/100/100/AvatarHeadshot/Png/isCircular'),
            ),
            Text(
              '''Fractwares Portfolio
(Full-stack Developer)''',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: Theme.of(context).textTheme.displayMedium!.fontSize,
                shadows: const <Shadow>[
                  Shadow(
                    color: Colors.black,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Positioned(
          bottom: 16,
          child: Align(
            child: Transform.rotate(
              angle: 90 * math.pi / 180,
              child: IconButton.outlined(
                onPressed: () {
                  Scrollable.ensureVisible(
                    widget.pageKey2!.currentContext!,
                    duration: const Duration(milliseconds: 500),
                  );
                },
                icon: const Icon(Icons.chevron_right),
                iconSize: 48,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
