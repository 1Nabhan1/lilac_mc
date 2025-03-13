class BrandModel {
  bool? status;
  List<ModData>? data;

  BrandModel({this.status, this.data});

  factory BrandModel.fromJson(Map<String, dynamic> json) {
    return BrandModel(
      status: json['status'],
      data: (json['data'] as List?)?.map((item) => ModData.fromJson(item)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'data': data?.map((item) => item.toJson()).toList(),
    };
  }
}

class ModData {
  int? id;
  String? name;

  ModData({this.id, this.name});

  factory ModData.fromJson(Map<String, dynamic> json) {
    return ModData(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
