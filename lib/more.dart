import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key, this.pageKey});

  final GlobalKey? pageKey;

  @override
  State<MorePage> createState() => MorePageState();
}

class MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      key: widget.pageKey,
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(top: 16)),
          Text(
            'Looking for more?',
            style: Theme.of(context).textTheme.displaySmall,
            textAlign: TextAlign.center,
          ),
          const Padding(padding: EdgeInsets.only(top: 16)),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  const Spacer(flex: 3),
                  Expanded(
                    flex: 4,
                    child: Text(
                      'Feel free to check out the links below or message me using the \'Get in touch\' button in the bottom right:',
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Spacer(flex: 3),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 16)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.only(left: 32)),
                  IconButton.filled(
                    onPressed: () {
                      launchUrlString('https://discord.gg/hk5Ey4F');
                    },
                    icon: const Icon(Icons.discord),
                    iconSize: 48,
                    tooltip: 'Fractware Discord',
                  ),
                  const Padding(padding: EdgeInsets.only(left: 32)),
                  IconButton.filled(
                    onPressed: () {
                      launchUrlString('https://twitter.com/Fractware');
                    },
                    icon: ImageIcon(
                      AssetImage(
                        Theme.of(context).brightness == Brightness.dark
                            ? 'x_black.png'
                            : 'x_white.png',
                      ),
                      size: 48,
                    ),
                    iconSize: 48,
                    tooltip: 'Twitter / X',
                  ),
                  const Padding(padding: EdgeInsets.only(left: 32)),
                  IconButton.filled(
                    onPressed: () {
                      launchUrlString('https://medium.com/@cadeoldland2001');
                    },
                    icon: ImageIcon(
                      AssetImage(
                        Theme.of(context).brightness == Brightness.dark
                            ? 'medium_black.png'
                            : 'medium_white.png',
                      ),
                      size: 48,
                    ),
                    iconSize: 48,
                    tooltip: 'Medium',
                  ),
                  const Padding(padding: EdgeInsets.only(left: 32)),
                  IconButton.filled(
                    onPressed: () {
                      launchUrlString('https://www.patreon.com/fractware');
                    },
                    icon: ImageIcon(
                      AssetImage(
                        Theme.of(context).brightness == Brightness.dark
                            ? 'patreon_black.png'
                            : 'patreon_white.png',
                      ),
                      size: 48,
                    ),
                    iconSize: 48,
                    tooltip: 'Patreon',
                  ),
                ],
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 16)),
        ],
      ),
    );
  }
}
