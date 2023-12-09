import 'package:flutter/material.dart';

import 'compact.dart';
import 'expanded.dart';

class TimelinePage extends StatefulWidget {
  const TimelinePage({super.key, this.pageKey});

  final GlobalKey? pageKey;

  @override
  State<TimelinePage> createState() => TimelinePageState();
}

class TimelinePageState extends State<TimelinePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      key: widget.pageKey,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width < 600 ? 16 : 24),
      child: MediaQuery.of(context).size.width < 600
          ? const TimelinePageCompact()
          : const TimelinePageExpanded(),
    );
  }
}
