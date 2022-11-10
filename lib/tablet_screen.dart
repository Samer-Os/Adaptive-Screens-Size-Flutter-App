import 'package:flutter/material.dart';
import '/models/items_list.dart';
import '/models/detail.dart';

class TabletScreen extends StatefulWidget {
  final double screenWidth;

  const TabletScreen({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  @override
  _TabletScreenState createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
  var num = 0;

  @override
  void didChangeDependencies() {
    num = 0;
    super.didChangeDependencies();
  }

  void changeNum(int idx) {
    setState(() {
      num = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ItemsList(
            screenWidth: widget.screenWidth,
            changeNumber: changeNum,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
            child: Detail(number: num),
          ),
        ),
      ],
    );
  }
}
