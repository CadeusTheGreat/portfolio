import 'package:flutter/material.dart';

import 'compact.dart';
import 'expanded.dart';

class GamesPage extends StatefulWidget {
  const GamesPage({super.key, this.pageKey});

  final GlobalKey? pageKey;

  @override
  State<GamesPage> createState() => GamesPageState();
}

class GamesPageState extends State<GamesPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      key: widget.pageKey,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width < 600 ? 16 : 24),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: MediaQuery.of(context).size.width < 600
            ? const GamesPageCompact()
            : const GamesPageExpanded(),
        ),
    );
  }
}
