import 'package:flutter/material.dart';
import 'package:farmacy_app/services/pharmacy_data_service.dart';
import '../../../tool.dart';

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
            'https://www.nosyapi.com/apiv2/pharmacy?city=${replaceChar(city)}&county=${replaceChar(county)}'),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: SingleChildScrollView(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 150,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
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
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.location_on,
                                color: Colors.red,
                                size: 30,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.phone,
                                color: Colors.blue,
                                size: 30,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
