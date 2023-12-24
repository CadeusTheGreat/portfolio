import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutMePageCompact extends StatefulWidget {
  const AboutMePageCompact({super.key});

  @override
  State<AboutMePageCompact> createState() => AboutMePageState();
}

class AboutMePageState extends State<AboutMePageCompact> {
  String? hovered;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(top: 16)),
          Text(
            'About me',
            style: Theme.of(context).textTheme.displaySmall,
            textAlign: TextAlign.center,
          ),
          const Padding(padding: EdgeInsets.only(top: 16)),
          FittedBox(
            fit: BoxFit.contain,
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/profile.png',
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 16)),
          Text(
            '''Welcome!

I'm Fractware, a 21 year old programmer from the UK. I have 10+ years of experience on the Roblox platform as well as 2 years of Flutter experience.

On GitHub I am an active contributor to the open source Roblox creator documentation.

I'm a self-taught full-stack developer who has experience in a broad range of areas including the following:''',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const Padding(padding: EdgeInsets.only(top: 16)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: MouseRegion(
                  onEnter: (event) {
                    hovered = 'roblox';
                    setState(() {});
                  },
                  onExit: (event) {
                    hovered = null;
                    setState(() {});
                  },
                  child: Card(
                    color: hovered == 'roblox'
                        ? Theme.of(context).hoverColor
                        : Theme.of(context).primaryColor,
                    child: GestureDetector(
                      onTap: () {
                        launchUrlString(
                            'https://www.roblox.com/users/538205352/profile');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration:
                              const BoxDecoration(shape: BoxShape.rectangle),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Roblox',
                                style:
                                    Theme.of(context).textTheme.bodyLarge,
                                textAlign: TextAlign.center,
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(top: 8)),
                              const CircleAvatar(
                                backgroundImage: NetworkImage(
                                  'https://tr.rbxcdn.com/30DAY-AvatarHeadshot-84C8FCE4833331E7BD35BB06267BC97B-Png/100/100/AvatarHeadshot/Png/isCircular',
                                ),
                                maxRadius: 50,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 8)),
              Expanded(
                flex: 5,
                child: MouseRegion(
                  onEnter: (event) {
                    hovered = 'flutter';
                    setState(() {});
                  },
                  onExit: (event) {
                    hovered = null;
                    setState(() {});
                  },
                  child: Card(
                    color: hovered == 'flutter'
                        ? Theme.of(context).hoverColor
                        : Theme.of(context).primaryColor,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration:
                            const BoxDecoration(shape: BoxShape.rectangle),
                        child: Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: <Widget>[
                            AnimatedOpacity(
                              opacity: hovered == 'flutter' ? 0 : 1,
                              duration: const Duration(milliseconds: 250),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Flutter',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                    textAlign: TextAlign.center,
                                  ),
                                  const Padding(
                                      padding: EdgeInsets.only(top: 8)),
                                  LayoutBuilder(
                                      builder: (context, constraint) {
                                    return Icon(
                                      Icons.flutter_dash,
                                      size: constraint.biggest.width,
                                    );
                                  }),
                                ],
                              ),
                            ),
                            Positioned.fill(
                              child: AnimatedOpacity(
                                opacity: hovered == 'flutter' ? 1 : 0,
                                duration: const Duration(milliseconds: 250),
                                child: const Align(
                                  child: Text(
                                    'My portfolio was written using Flutter!',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 8)),
              Expanded(
                flex: 5,
                child: MouseRegion(
                  onEnter: (event) {
                    hovered = 'python';
                    setState(() {});
                  },
                  onExit: (event) {
                    hovered = null;
                    setState(() {});
                  },
                  child: Card(
                    color: hovered == 'python'
                        ? Theme.of(context).hoverColor
                        : Theme.of(context).primaryColor,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration:
                            const BoxDecoration(shape: BoxShape.rectangle),
                        child: Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  'Python',
                                  style:
                                      Theme.of(context).textTheme.bodyLarge,
                                  textAlign: TextAlign.center,
                                ),
                                const Padding(
                                    padding: EdgeInsets.only(top: 8)),
                                LayoutBuilder(builder: (context, constraint) {
                                  return Icon(
                                    Icons.code,
                                    size: constraint.biggest.width,
                                  );
                                }),
                              ],
                            ),
                            Positioned.fill(
                              child: AnimatedOpacity(
                                opacity: hovered == 'python' ? 1 : 0,
                                duration: const Duration(milliseconds: 250),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'assets/python.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 8)),
              Expanded(
                flex: 5,
                child: MouseRegion(
                  onEnter: (event) {
                    hovered = 'github';
                    setState(() {});
                  },
                  onExit: (event) {
                    hovered = null;
                    setState(() {});
                  },
                  child: Card(
                    color: hovered == 'github'
                        ? Theme.of(context).hoverColor
                        : Theme.of(context).primaryColor,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration:
                            const BoxDecoration(shape: BoxShape.rectangle),
                        child: Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  'Github',
                                  style:
                                      Theme.of(context).textTheme.bodyLarge,
                                  textAlign: TextAlign.center,
                                ),
                                const Padding(
                                    padding: EdgeInsets.only(top: 8)),
                                LayoutBuilder(builder: (context, constraint) {
                                  return Icon(
                                    Icons.source,
                                    size: constraint.biggest.width,
                                  );
                                }),
                              ],
                            ),
                            Positioned.fill(
                              child: AnimatedOpacity(
                                opacity: hovered == 'github' ? 1 : 0,
                                duration: const Duration(milliseconds: 250),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: GestureDetector(
                                    onTap: () {
                                      launchUrlString(
                                          'https://github.com/CadeusTheGreat');
                                    },
                                    child: Image.asset(
                                      'assets/github.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 16)),
        ],
      ),
    );
  }
}
