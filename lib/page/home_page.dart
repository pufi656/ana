import 'package:flutter/material.dart';

import '../main.dart';
import 'line_chart_page.dart';

class HomePage extends StatelessWidget {
  HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: PageView(
          children: [
            LineChartPage(),
          ],
        ),
      ),
    );
  }
}
