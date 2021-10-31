import 'package:farmacy_app/app/screens/city_screen/city_screen.dart';
import 'package:farmacy_app/app/screens/pharmacy_screen/pharmacy_screen.dart';
import 'package:farmacy_app/app/screens/town_screen/town_screen.dart';
import 'package:flutter/material.dart';

void goToTownRoute(BuildContext context, Object? il, ilceler) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (_) {
        return TownScreen(city: il, counties: ilceler);
      },
    ),
  );
}

void goToPharmacy(BuildContext context, ilce, il) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (_) {
        return PharmacyScreen(city: il, county: ilce);
      },
    ),
  );
}

void goTo(BuildContext context, routeName) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const CityScreen(),
    ),
  );
}
