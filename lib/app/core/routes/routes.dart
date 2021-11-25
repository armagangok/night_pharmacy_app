import 'package:flutter/material.dart';
import '../../screens/town_screen/town_screen.dart';
import '../../screens/pharmacy_screen/pharmacy_screen.dart';
import '../../screens/city_screen/city_screen.dart';

void goToTownRoute(BuildContext context, il, ilceler) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (_) => TownScreen(city: il, counties: ilceler),
    ),
  );
}

void goToPharmacyRoute(BuildContext context, ilce, il) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (_) => PharmacyScreen(city: il, county: ilce),
    ),
  );
}

void goToCityRoute(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => const CityScreen(),
    ),
  );
}
