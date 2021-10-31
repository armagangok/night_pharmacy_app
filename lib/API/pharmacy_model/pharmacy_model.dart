import 'package:farmacy_app/API/pharmacy_model/data_detail_model.dart';

class PharmacyModel {
  String? status;
  String? message;
  int? rowCount;
  int? systemTime;
  List<PharmacyDetailModel>? data;

  PharmacyModel({
    this.status,
    this.message,
    this.rowCount,
    this.systemTime,
    this.data,
  });

  factory PharmacyModel.fromJson(Map<String, dynamic> json) => PharmacyModel(
        status: json['status'] as String?,
        message: json['message'] as String?,
        rowCount: json['rowCount'] as int?,
        systemTime: json['systemTime'] as int?,
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => PharmacyDetailModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'rowCount': rowCount,
        'systemTime': systemTime,
        'data': data?.map((e) => e.toJson()).toList(),
      };
}
