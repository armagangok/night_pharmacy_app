import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.snapshot,
    required this.index,
  }) : super(key: key);

  final AsyncSnapshot snapshot;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.6,
          height: MediaQuery.of(context).size.height / 7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${snapshot.data.data[index].eczaneAdi}",
                style: const TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("${snapshot.data.data[index].adresi}"),
            ],
          ),
        ),
      ],
    );
  }
}
