import 'package:flutter/material.dart';
import 'package:preloadwebapptemplate/view/widgets/responsiveness.dart';

class HistoryPage extends StatelessWidget {
  static const String pathName = '/history';
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HistoryPageScreen();
  }
}

class HistoryPageScreen extends StatelessWidget {
  const HistoryPageScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizedRPadding = !ResponsiveWidget.isSmallScreen(context) ? 25 : 10;
    return const Scaffold(
      body: Center(child: Text('History')),
    );
  }
}
