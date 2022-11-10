import 'package:flutter/material.dart';

class ItemsList extends StatelessWidget {
  final double screenWidth;
  Function? newScreen;
  Function? changeNumber;

  ItemsList({
    required this.screenWidth,
    this.newScreen,
    this.changeNumber,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (ctx, index) => Container(
        margin: const EdgeInsets.all(10),
        child: InkWell(
          splashColor: Colors.blue,
          onTap: screenWidth < 600
              ? () => newScreen!(context, index)
              : () => changeNumber!(index),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                index.toString(),
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
