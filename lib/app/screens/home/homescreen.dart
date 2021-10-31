import 'package:farmacy_app/app/core/routes/routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: const Text("Şehir ve İlçelere Göre Eczaneler"),
            onPressed: () {

              goTo(context, '/PharmacyScreen');
            },
          ),
          const Divider(),
          TextButton(
            child: const Text("Yakınımdakiler"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
