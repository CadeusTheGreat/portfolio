import 'package:flutter/material.dart';

import 'compact.dart';
import 'expanded.dart';

class TechnologiesPage extends StatefulWidget {
  const TechnologiesPage({super.key, this.pageKey});

  final GlobalKey? pageKey;

  @override
  State<TechnologiesPage> createState() => TechnologiesPageState();
}

class TechnologiesPageState extends State<TechnologiesPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      key: widget.pageKey,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width < 600 ? 16 : 24),
      child: MediaQuery.of(context).size.width < 600
          ? const TechnologiesPageCompact()
          : const TechnologiesPageExpanded(),
    );
  }
}
