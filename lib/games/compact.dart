import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class GamesPageCompact extends StatefulWidget {
  const GamesPageCompact({super.key});

  @override
  State<GamesPageCompact> createState() => GamesPageState();
}

class GamesPageState extends State<GamesPageCompact> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const Padding(padding: EdgeInsets.only(top: 16)),
        Text(
          'Games',
          style: Theme.of(context).textTheme.displaySmall,
          textAlign: TextAlign.center,
        ),
        const Padding(padding: EdgeInsets.only(top: 16)),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: <Widget>[
                Text(
                  'Free Build',
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Open world MMO building game where your imagination is the limit.',
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
                          'https://www.roblox.com/games/15449225088/');
                    },
                    child: const Text('Play on Roblox'),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.only(top: 16)),
      ],
    );
  }
}
