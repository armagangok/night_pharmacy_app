import 'package:farmacy_app/app/core/routes/routes.dart';
import 'package:flutter/material.dart';

class TownScreen extends StatelessWidget {
  final  city;
  final  counties;

  const TownScreen({Key? key, this.city, this.counties}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(city.toString()),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                onTap: () => goToPharmacy(context, counties[index], city),
                title: Text(counties[index]),
              ),
              const Divider(),
            ],
          );
        },
        itemCount: counties.length,
      ),
    );
  }
}
