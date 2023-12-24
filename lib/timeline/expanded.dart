import 'package:flutter/material.dart';

class TimelinePageExpanded extends StatefulWidget {
  const TimelinePageExpanded({super.key});

  @override
  State<TimelinePageExpanded> createState() => TimelinePageState();
}

class TimelinePageState extends State<TimelinePageExpanded> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const Padding(padding: EdgeInsets.only(top: 16)),
        Text(
          'Timeline',
          style: Theme.of(context).textTheme.displaySmall,
          textAlign: TextAlign.center,
        ),
        const Padding(padding: EdgeInsets.only(top: 16)),
        Row(
          children: <Widget>[
            const Spacer(flex: 5),
            Expanded(
              flex: 1,
              child: Text(
                '2010',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.left,
              ),
            ),
            const Spacer(),
            const Card(
              shape: CircleBorder(),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Icon(
                  Icons.start,
                  size: 64,
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 5,
              child: Text(
                'In 2010 I originally joined Roblox. This kickstarted my journey into programming.',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.left,
              ),
            ),
            const Spacer(flex: 5),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 16)),
        Row(
          children: <Widget>[
            const Spacer(flex: 5),
            Expanded(
              flex: 1,
              child: Text(
                '2015 - 2016',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.left,
              ),
            ),
            const Spacer(),
            const Card(
              shape: CircleBorder(),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Icon(
                  Icons.bubble_chart,
                  size: 64,
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 5,
              child: Text(
                'In 2015/2016 I began planning & prototyping what would later become Free Build.',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.left,
              ),
            ),
            const Spacer(flex: 5),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 16)),
        Row(
          children: <Widget>[
            const Spacer(flex: 5),
            Expanded(
              flex: 1,
              child: Text(
                '2017 - 2018',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.left,
              ),
            ),
            const Spacer(),
            const Card(
              shape: CircleBorder(),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Icon(
                  Icons.bug_report,
                  size: 64,
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 5,
              child: Text(
                'In 2017 early versions of Free Build became playable & in 2018 I took a new, more structured approach, to developing the game.',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.left,
              ),
            ),
            const Spacer(flex: 5),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 16)),
        Row(
          children: <Widget>[
            const Spacer(flex: 5),
            Expanded(
              flex: 1,
              child: Text(
                '2019 - 2020',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.left,
              ),
            ),
            const Spacer(),
            const Card(
              shape: CircleBorder(),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Icon(
                  Icons.play_arrow,
                  size: 64,
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 5,
              child: Text(
                'In 2019/2020 Free Build had become far more stable & playable.',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.left,
              ),
            ),
            const Spacer(flex: 5),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 16)),
        Row(
          children: <Widget>[
            const Spacer(flex: 5),
            Expanded(
              flex: 1,
              child: Text(
                '2020',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.left,
              ),
            ),
            const Spacer(),
            const Card(
              shape: CircleBorder(),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Icon(
                  Icons.slow_motion_video,
                  size: 64,
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 5,
              child: Text(
                'In late 2020 I published my Time Scale Framework for all to use.',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.left,
              ),
            ),
            const Spacer(flex: 5),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 16)),
        Row(
          children: <Widget>[
            const Spacer(flex: 5),
            Expanded(
              flex: 1,
              child: Text(
                '2021',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.left,
              ),
            ),
            const Spacer(),
            const Card(
              shape: CircleBorder(),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Icon(
                  Icons.link,
                  size: 64,
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 5,
              child: Text(
                'Later in 2021 I published Weld Service which had been developed for Free Build as an alternative to surface types.',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.left,
              ),
            ),
            const Spacer(flex: 5),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 16)),
        Row(
          children: <Widget>[
            const Spacer(flex: 5),
            Expanded(
              flex: 1,
              child: Text(
                '2020 - 2022',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.left,
              ),
            ),
            const Spacer(),
            const Card(
              shape: CircleBorder(),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Icon(
                  Icons.call_split,
                  size: 64,
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 5,
              child: Text(
                'From 2020-2022 I branched out to some smaller project ideas such as Ant Colonies.',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.left,
              ),
            ),
            const Spacer(flex: 5),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 16)),
        Row(
          children: <Widget>[
            const Spacer(flex: 5),
            Expanded(
              flex: 1,
              child: Text(
                '2022 - Present',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.left,
              ),
            ),
            const Spacer(),
            const Card(
              shape: CircleBorder(),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Icon(
                  Icons.code,
                  size: 64,
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 5,
              child: Text(
                'Since late 2022 my attention has refocused to Free Build where I\'m now determined to introduce game changing technologies.',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.left,
              ),
            ),
            const Spacer(flex: 5),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 16)),
      ],
    );
  }
}
