import 'package:flutter/material.dart';
import 'text_widgets.dart';
import 'icon_widgets.dart';

class PharmacyCardWidget extends StatelessWidget {
  final AsyncSnapshot snapshot;
  final int index;
  const PharmacyCardWidget(
      {Key? key, required this.snapshot, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(snapshot: snapshot, index: index),
            IconButtonWidget(snapshot: snapshot, index: index),
          ],
        ),
      ),
    );
  }
}
