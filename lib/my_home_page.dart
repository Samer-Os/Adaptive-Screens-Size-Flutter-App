import 'package:flutter/material.dart';
import '/tablet_screen.dart';
import '/models/items_list.dart';
import '/details_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  void PushToNumScreen(BuildContext context, int idx) {
    Navigator.pushNamed(context, DetailsScreen.route, arguments: idx);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('My app'),
      ),
      body: screenWidth < 600
          ? ItemsList(
              screenWidth: screenWidth,
              newScreen: PushToNumScreen,
            )
          : TabletScreen(screenWidth: screenWidth),
    );
  }
}
