
import 'package:flutter/material.dart';

class calendar_widget extends StatelessWidget {
  const calendar_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.calendar_month_rounded,
          color: Colors.pink,
          size: 24.0,
          semanticLabel: 'Text to announce in accessibility modes',);
  }
}


