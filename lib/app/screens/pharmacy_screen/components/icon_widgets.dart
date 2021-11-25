import 'package:flutter/material.dart';
import 'package:farmacy_app/app/core/tools/tools.dart';

class IconButtonWidget extends StatelessWidget {
  final AsyncSnapshot snapshot;
  final int index;

  const IconButtonWidget({
    Key? key,
    required this.snapshot,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          icon: const Icon(Icons.location_on, color: Colors.red, size: 30),
          onPressed: () => tools.calling(
            "https://maps.apple.com/maps/?q=${snapshot.data.data[index].latitude},${snapshot.data.data[index].longitude}",
          ),
        ),
        IconButton(
          icon: const Icon(
            Icons.phone,
            color: Colors.blue,
            size: 30,
          ),
          onPressed: () =>
              tools.calling(('tel:${snapshot.data.data[index].telefon}')),
        ),
      ],
    );
  }
}
