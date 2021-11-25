import 'package:flutter/material.dart';
import 'package:farmacy_app/app/core/models/city_county_model.dart';
import 'package:farmacy_app/app/core/routes/routes.dart';

class CityScreen extends StatelessWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("İller"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text("${data[index]['il']}"),
                onTap: () => goToTownRoute(
                  context,
                  data[index]['il'],
                  data[index]['ilceleri'],
                ),
              ),
              const Divider(),
            ],
          );
        },
        itemCount: data.length,
      ),
    );
  }
}
