import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TechnologiesPageExpanded extends StatefulWidget {
  const TechnologiesPageExpanded({super.key});

  @override
  State<TechnologiesPageExpanded> createState() => TechnologiesPageState();
}

class TechnologiesPageState extends State<TechnologiesPageExpanded> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(padding: EdgeInsets.only(top: 16)),
        Text(
          'Public Technologies',
          style: Theme.of(context).textTheme.displaySmall,
          textAlign: TextAlign.center,
        ),
        const Padding(padding: EdgeInsets.only(top: 16)),
        Text(
          'Checkout what I\'ve created for the community to use.',
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        const Padding(padding: EdgeInsets.only(top: 16)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Spacer(flex: 3),
            Expanded(
              flex: 4,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Weld Service',
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        'Framework to make parts weld in response to the removal of part surfaces.',
                        textAlign: TextAlign.center,
                      ),
                      const Padding(padding: EdgeInsets.only(top: 8)),
                      const Icon(
                        Icons.link,
                        size: 100,
                      ),
                      const Padding(padding: EdgeInsets.only(top: 8)),
                      SizedBox(
                        width: double.infinity,
                        child: FilledButton.tonal(
                          onPressed: () {
                            launchUrlString(
                                'https://github.com/Fractware/WeldService');
                          },
                          child: const Text('GitHub'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(left: 8)),
            Expanded(
              flex: 8,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Time Scale Framework',
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        'Provides a framework to slow down time scale in your game.',
                        textAlign: TextAlign.center,
                      ),
                      const Padding(padding: EdgeInsets.only(top: 8)),
                      const Icon(
                        Icons.slow_motion_video,
                        size: 100,
                      ),
                      const Padding(padding: EdgeInsets.only(top: 8)),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: FilledButton.tonal(
                              onPressed: () {
                                launchUrlString(
                                    'https://github.com/Fractware/TimeScaleFramework');
                              },
                              child: const Text('GitHub'),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 8)),
                          Expanded(
                            child: FilledButton.tonal(
                              onPressed: () {
                                launchUrlString(
                                    'https://www.roblox.com/library/5933295002/');
                              },
                              child: const Text('Marketplace'),
                            ),
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.only(top: 8)),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: FilledButton.tonal(
                              onPressed: () {
                                launchUrlString(
                                    'https://devforum.roblox.com/t/time-scale-framework/861231');
                              },
                              child: const Text('Learn more'),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 8)),
                          Expanded(
                            child: FilledButton.tonal(
                              onPressed: () {
                                launchUrlString(
                                    'https://devforum.roblox.com/t/time-scale-framework-tutorial/935441');
                              },
                              child: const Text('Tutorial'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(left: 8)),
            Expanded(
              flex: 4,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Custom Mouse',
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        'Replacement for the built-in Roblox mouse.',
                        textAlign: TextAlign.center,
                      ),
                      const Padding(padding: EdgeInsets.only(top: 8)),
                      const Icon(
                        Icons.mouse,
                        size: 100,
                      ),
                      const Padding(padding: EdgeInsets.only(top: 8)),
                      SizedBox(
                        width: double.infinity,
                        child: FilledButton.tonal(
                          onPressed: () {
                            launchUrlString(
                                'https://www.roblox.com/library/2568613199/');
                          },
                          child: const Text('Marketplace'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(left: 8)),
            const Spacer(flex: 3),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 32)),
        Text(
          'Private Technologies',
          style: Theme.of(context).textTheme.displaySmall,
          textAlign: TextAlign.center,
        ),
        const Padding(padding: EdgeInsets.only(top: 16)),
        Text(
          'A sneak peak of some of the technologies I use for my personal projects.',
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        const Padding(padding: EdgeInsets.only(top: 16)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            Expanded(
              flex: 2,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minHeight: 200,
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Hybrid Terrain',
                          style: Theme.of(context).textTheme.bodyLarge,
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          'Terrain system that allows for massive persistent open worlds spanning hundreds of thousands of studs using a mix of smoother & part terrain.',
                          textAlign: TextAlign.center,
                        ),
                        const Padding(padding: EdgeInsets.only(top: 8)),
                        const Icon(
                          Icons.terrain,
                          size: 100,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(left: 8)),
            Expanded(
              flex: 2,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minHeight: 200,
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Live Updates',
                          style: Theme.of(context).textTheme.bodyLarge,
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          'A system that allows for updates to be applied during gameplay.',
                          textAlign: TextAlign.center,
                        ),
                        const Padding(padding: EdgeInsets.only(top: 8)),
                        const Icon(
                          Icons.update,
                          size: 100,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(left: 8)),
            Expanded(
              flex: 2,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minHeight: 200,
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Building Ecosystem',
                          style: Theme.of(context).textTheme.bodyLarge,
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          'Building system & accompanying tools used in Free Build that allows for players to express their creativity.',
                          textAlign: TextAlign.center,
                        ),
                        const Padding(padding: EdgeInsets.only(top: 8)),
                        const Icon(
                          Icons.build,
                          size: 100,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 16)),
      ],
    );
  }
}
