class BrandData {
  final bool status;
  final Data data;

  BrandData({required this.status, required this.data});

  factory BrandData.fromJson(Map<String, dynamic> json) {
    return BrandData(
      status: json['status'],
      data: Data.fromJson(json['data']),
    );
  }
}

class Data {
  final List<Brand> brands;
  final List<VehicleColor> vehicleColors;
  final List<VehicleInfo> vehicleInfo;

  Data({
    required this.brands,
    required this.vehicleColors,
    required this.vehicleInfo,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      brands: List<Brand>.from(json['brands'].map((x) => Brand.fromJson(x))),
      vehicleColors: List<VehicleColor>.from(
          json['vehicleColors'].map((x) => VehicleColor.fromJson(x))),
      vehicleInfo: List<VehicleInfo>.from(
          json['vehicleInfo'].map((x) => VehicleInfo.fromJson(x))),
    );
  }
}

class Brand {
  final int id;
  final String name;

  Brand({required this.id, required this.name});

  factory Brand.fromJson(Map<String, dynamic> json) {
    return Brand(
      id: json['id'],
      name: json['name'],
    );
  }
}

class VehicleColor {
  final int id;
  final String name;

  VehicleColor({required this.id, required this.name});

  factory VehicleColor.fromJson(Map<String, dynamic> json) {
    return VehicleColor(
      id: json['id'],
      name: json['name'],
    );
  }
}

class VehicleInfo {
  final int id;
  final String name;

  VehicleInfo({required this.id, required this.name});

  factory VehicleInfo.fromJson(Map<String, dynamic> json) {
    return VehicleInfo(
      id: json['id'],
      name: json['name'],
    );
  }
}
