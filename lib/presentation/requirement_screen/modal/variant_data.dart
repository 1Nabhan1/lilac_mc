class VariantDataModel {
  bool? status;
  VariantData? data;

  VariantDataModel({this.status, this.data});

  VariantDataModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? VariantData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class VariantData {
  List<Variant>? variant;
  List<Transmission>? transmissions;
  List<FuelType>? fuelTypes;
  List<BodyType>? bodyTypes;

  VariantData({this.variant, this.transmissions, this.fuelTypes, this.bodyTypes});

  VariantData.fromJson(Map<String, dynamic> json) {
    if (json['variant'] != null) {
      variant = [];
      json['variant'].forEach((v) {
        variant!.add(Variant.fromJson(v));
      });
    }
    if (json['transmissions'] != null) {
      transmissions = [];
      json['transmissions'].forEach((v) {
        transmissions!.add(Transmission.fromJson(v));
      });
    }
    if (json['fuelTypes'] != null) {
      fuelTypes = [];
      json['fuelTypes'].forEach((v) {
        fuelTypes!.add(FuelType.fromJson(v));
      });
    }
    if (json['bodyTypes'] != null) {
      bodyTypes = [];
      json['bodyTypes'].forEach((v) {
        bodyTypes!.add(BodyType.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (variant != null) {
      data['variant'] = variant!.map((v) => v.toJson()).toList();
    }
    if (transmissions != null) {
      data['transmissions'] = transmissions!.map((v) => v.toJson()).toList();
    }
    if (fuelTypes != null) {
      data['fuelTypes'] = fuelTypes!.map((v) => v.toJson()).toList();
    }
    if (bodyTypes != null) {
      data['bodyTypes'] = bodyTypes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

// 🔹 Variant Model
class Variant {
  int? id;
  String? name;

  Variant({this.id, this.name});

  Variant.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}

// 🔹 Transmission Model
class Transmission {
  int? id;
  String? name;

  Transmission({this.id, this.name});

  Transmission.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}

// 🔹 Fuel Type Model
class FuelType {
  int? id;
  String? name;

  FuelType({this.id, this.name});

  FuelType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}

// 🔹 Body Type Model
class BodyType {
  int? id;
  String? name;

  BodyType({this.id, this.name});

  BodyType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
