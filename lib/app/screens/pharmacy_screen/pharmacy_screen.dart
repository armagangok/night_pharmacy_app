import 'package:flutter/material.dart';
import 'components/pharmacy_card_widget.dart';
import '../../../tool.dart';
import '../../../services/pharmacy_data_service.dart';




class PharmacyScreen extends StatelessWidget {
  final String city;
  final String county;

  const PharmacyScreen({
    Key? key,
    required this.city,
    required this.county,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(county + " Eczaneler"),
      ),
      body: FutureBuilder(
        future: pharmacyDataService.fetchData(
          'https://www.nosyapi.com/apiv2/pharmacy?city=${replaceChar(city)}&county=${replaceChar(county)}',
        ),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemBuilder: (context, index) {
                return PharmacyCardWidget(
                  snapshot: snapshot,
                  index: index,
                );
              },
              itemCount: snapshot.data.data.length,
            );
          }
        },
      ),
    );
  }
}
