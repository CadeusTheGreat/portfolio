import 'package:flutter/material.dart';

import 'compact.dart';
import 'expanded.dart';

class AboutMePage extends StatefulWidget {
  const AboutMePage({super.key, this.pageKey});

  final GlobalKey? pageKey;

  @override
  State<AboutMePage> createState() => AboutMePageState();
}

class AboutMePageState extends State<AboutMePage> {
  String? hovered;

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: widget.pageKey,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width < 600 ? 16 : 24),
      child: MediaQuery.of(context).size.width < 600
          ? const AboutMePageCompact()
          : const AboutMePageExpanded(),
    );
  }
}
