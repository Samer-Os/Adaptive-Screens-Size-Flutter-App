import 'package:flutter/material.dart';
import '/models/detail.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  static const route = 'DetailsScreenRoute';

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)?.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        title: Text('$index. screen'),
      ),
      body: Detail(number: index),
    );
  }
}
