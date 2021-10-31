class PharmacyDetailModel {
  String? eczaneAdi;
  String? adresi;
  String? semt;
  String? yolTarifi;
  String? telefon;
  String? telefon2;
  String? sehir;
  String? ilce;
  double? latitude;
  double? longitude;

  PharmacyDetailModel({
    this.eczaneAdi,
    this.adresi,
    this.semt,
    this.yolTarifi,
    this.telefon,
    this.telefon2,
    this.sehir,
    this.ilce,
    this.latitude,
    this.longitude,
  });

  factory PharmacyDetailModel.fromJson(Map<String, dynamic> json) =>
      PharmacyDetailModel(
        eczaneAdi: json['EczaneAdi'] as String?,
        adresi: json['Adresi'] as String?,
        semt: json['Semt'] as String?,
        yolTarifi: json['YolTarifi'] as String?,
        telefon: json['Telefon'] as String?,
        telefon2: json['Telefon2'] as String?,
        sehir: json['Sehir'] as String?,
        ilce: json['ilce'] as String?,
        latitude: (json['latitude'] as num?)?.toDouble(),
        longitude: (json['longitude'] as num?)?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        'EczaneAdi': eczaneAdi,
        'Adresi': adresi,
        'Semt': semt,
        'YolTarifi': yolTarifi,
        'Telefon': telefon,
        'Telefon2': telefon2,
        'Sehir': sehir,
        'ilce': ilce,
        'latitude': latitude,
        'longitude': longitude,
      };
}
