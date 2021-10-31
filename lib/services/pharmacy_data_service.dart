import 'dart:convert';
import '../API/pharmacy_model/pharmacy_model.dart';
import 'package:http/http.dart' as http;

PharmacyDataService pharmacyDataService = PharmacyDataService();

class PharmacyDataService {
  

  Future<PharmacyModel> fetchData(url) async {
    final response = await http.get(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
        'authorization':
            'Bearer /*API_KEY*/',
        'content-type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final data = PharmacyModel.fromJson(jsonDecode(response.body));
      return data;
    } else {
      throw Exception("Error: ${response.statusCode}");
    }
  }
}
