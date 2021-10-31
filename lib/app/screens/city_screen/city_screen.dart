import 'package:farmacy_app/app/core/routes/routes.dart';
import 'package:farmacy_app/app/core/models/city_county_model.dart';
import 'package:flutter/material.dart';

class CityScreen extends StatelessWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text("${data[index]['il']}"),
                onTap: () =>
                    goToTownRoute(context, data[index]['il'], data[index]['ilceleri']),
              ),
              const Divider(
                thickness: 0.5,
                color: Colors.white,
              ),
            ],
          );
        },
        itemCount: data.length,
      ),
    );
  }
}
