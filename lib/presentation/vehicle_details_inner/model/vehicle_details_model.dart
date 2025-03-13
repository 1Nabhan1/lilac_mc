import 'dart:convert';

class VehicleDetailsModel {
  bool? status;
  Data? data;

  VehicleDetailsModel({
    this.status,
    this.data,
  });

  factory VehicleDetailsModel.fromRawJson(String str) =>
      VehicleDetailsModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VehicleDetailsModel.fromJson(Map<String, dynamic> json) =>
      VehicleDetailsModel(
        status: json["status"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data?.toJson(),
      };
}

class Data {
  int? id;
  String? uniqueId;
  int? fkUserId;
  int? fkRoleId;
  int? fkVehicleTypeId;
  int? fkCategoryId;
  int? fkSubCategoryId;
  int? fkBrandId;
  int? fkVehicleModelId;
  int? fkVehicleVariantId;
  int? fkVehicleColorId;
  int? fkTransmissionId;
  int? fkFuelTypeId;
  int? fkBodyTypeId;
  dynamic fkVehicleFeaturesId;
  String? year;
  String? location;
  String? latitude;
  String? longitude;
  String? kmDriven;
  DateTime? insuranceValidity;
  String? price;
  String? type;
  dynamic description;
  dynamic dealPrice;
  int? isNewArrival;
  int? isPopular;
  Status? status;
  String? vehicleStatus;
  String? isVerified;
  dynamic remark;
  dynamic percentage;
  dynamic totalAmount;
  int? refundTimePeriod;
  int? createdBy;
  int? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  UserDetails? userDetails;
  int? kmAway;
  dynamic bookingVehicleStatus;
  dynamic bookingStatus;
  dynamic bookingId;
  bool? isFavorite;
  int? listedDays;
  List<Image>? images;
  List<OverviewDetail>? overviewDetails;
  List<SpecificationDetail>? specificationDetails;
  List<VehicleDetailFeatureVehicle>? vehicleDetailFeatureVehicles;
  Brand? brand;
  BodyType? category;
  BodyType? subCategory;
  Brand? vehicleModel;
  BodyType? vehicleVariant;
  Brand? vehicleColor;
  BodyType? transmission;
  BodyType? fuelType;
  BodyType? bodyType;
  BodyType? vehicleType;
  List<VehicleInfoDetail>? vehicleInfoDetails;
  List<OverviewDetail>? vehicleOverviewDetails;

  Data({
    this.id,
    this.uniqueId,
    this.fkUserId,
    this.fkRoleId,
    this.fkVehicleTypeId,
    this.fkCategoryId,
    this.fkSubCategoryId,
    this.fkBrandId,
    this.fkVehicleModelId,
    this.fkVehicleVariantId,
    this.fkVehicleColorId,
    this.fkTransmissionId,
    this.fkFuelTypeId,
    this.fkBodyTypeId,
    this.fkVehicleFeaturesId,
    this.year,
    this.location,
    this.latitude,
    this.longitude,
    this.kmDriven,
    this.insuranceValidity,
    this.price,
    this.type,
    this.description,
    this.dealPrice,
    this.isNewArrival,
    this.isPopular,
    this.status,
    this.vehicleStatus,
    this.isVerified,
    this.remark,
    this.percentage,
    this.totalAmount,
    this.refundTimePeriod,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.userDetails,
    this.kmAway,
    this.bookingVehicleStatus,
    this.bookingStatus,
    this.bookingId,
    this.isFavorite,
    this.listedDays,
    this.images,
    this.overviewDetails,
    this.specificationDetails,
    this.vehicleDetailFeatureVehicles,
    this.brand,
    this.category,
    this.subCategory,
    this.vehicleModel,
    this.vehicleVariant,
    this.vehicleColor,
    this.transmission,
    this.fuelType,
    this.bodyType,
    this.vehicleType,
    this.vehicleInfoDetails,
    this.vehicleOverviewDetails,
  });

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        uniqueId: json["unique_id"],
        fkUserId: json["fk_user_id"],
        fkRoleId: json["fk_role_id"],
        fkVehicleTypeId: json["fk_vehicle_type_id"],
        fkCategoryId: json["fk_category_id"],
        fkSubCategoryId: json["fk_sub_category_id"],
        fkBrandId: json["fk_brand_id"],
        fkVehicleModelId: json["fk_vehicle_model_id"],
        fkVehicleVariantId: json["fk_vehicle_variant_id"],
        fkVehicleColorId: json["fk_vehicle_color_id"],
        fkTransmissionId: json["fk_transmission_id"],
        fkFuelTypeId: json["fk_fuel_type_id"],
        fkBodyTypeId: json["fk_body_type_id"],
        fkVehicleFeaturesId: json["fk_vehicle_features_id"],
        year: json["year"],
        location: json["location"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        kmDriven: json["km_driven"],
        insuranceValidity: json["insurance_validity"] == null
            ? null
            : DateTime.parse(json["insurance_validity"]),
        price: json["price"],
        type: json["type"],
        description: json["description"],
        dealPrice: json["deal_price"],
        isNewArrival: json["is_new_arrival"],
        isPopular: json["is_popular"],
        status: statusValues.map[json["status"]]!,
        vehicleStatus: json["vehicle_status"],
        isVerified: json["is_verified"],
        remark: json["remark"],
        percentage: json["percentage"],
        totalAmount: json["total_amount"],
        refundTimePeriod: json["refund_time_period"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        userDetails: json["user_details"] == null
            ? null
            : UserDetails.fromJson(json["user_details"]),
        kmAway: json["km_away"],
        bookingVehicleStatus: json["booking_vehicle_status"],
        bookingStatus: json["booking_status"],
        bookingId: json["booking_id"],
        isFavorite: json["is_favorite"],
        listedDays: json["listed_days"],
        images: json["images"] == null
            ? []
            : List<Image>.from(json["images"]!.map((x) => Image.fromJson(x))),
        overviewDetails: json["overview_details"] == null
            ? []
            : List<OverviewDetail>.from(json["overview_details"]!
                .map((x) => OverviewDetail.fromJson(x))),
        specificationDetails: json["specification_details"] == null
            ? []
            : List<SpecificationDetail>.from(json["specification_details"]!
                .map((x) => SpecificationDetail.fromJson(x))),
        vehicleDetailFeatureVehicles:
            json["vehicle_detail_feature_vehicles"] == null
                ? []
                : List<VehicleDetailFeatureVehicle>.from(
                    json["vehicle_detail_feature_vehicles"]!
                        .map((x) => VehicleDetailFeatureVehicle.fromJson(x))),
        brand: json["brand"] == null ? null : Brand.fromJson(json["brand"]),
        category: json["category"] == null
            ? null
            : BodyType.fromJson(json["category"]),
        subCategory: json["sub_category"] == null
            ? null
            : BodyType.fromJson(json["sub_category"]),
        vehicleModel: json["vehicle_model"] == null
            ? null
            : Brand.fromJson(json["vehicle_model"]),
        vehicleVariant: json["vehicle_variant"] == null
            ? null
            : BodyType.fromJson(json["vehicle_variant"]),
        vehicleColor: json["vehicle_color"] == null
            ? null
            : Brand.fromJson(json["vehicle_color"]),
        transmission: json["transmission"] == null
            ? null
            : BodyType.fromJson(json["transmission"]),
        fuelType: json["fuel_type"] == null
            ? null
            : BodyType.fromJson(json["fuel_type"]),
        bodyType: json["body_type"] == null
            ? null
            : BodyType.fromJson(json["body_type"]),
        vehicleType: json["vehicle_type"] == null
            ? null
            : BodyType.fromJson(json["vehicle_type"]),
        vehicleInfoDetails: json["vehicle_info_details"] == null
            ? []
            : List<VehicleInfoDetail>.from(json["vehicle_info_details"]!
                .map((x) => VehicleInfoDetail.fromJson(x))),
        vehicleOverviewDetails: json["vehicle_overview_details"] == null
            ? []
            : List<OverviewDetail>.from(json["vehicle_overview_details"]!
                .map((x) => OverviewDetail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "unique_id": uniqueId,
        "fk_user_id": fkUserId,
        "fk_role_id": fkRoleId,
        "fk_vehicle_type_id": fkVehicleTypeId,
        "fk_category_id": fkCategoryId,
        "fk_sub_category_id": fkSubCategoryId,
        "fk_brand_id": fkBrandId,
        "fk_vehicle_model_id": fkVehicleModelId,
        "fk_vehicle_variant_id": fkVehicleVariantId,
        "fk_vehicle_color_id": fkVehicleColorId,
        "fk_transmission_id": fkTransmissionId,
        "fk_fuel_type_id": fkFuelTypeId,
        "fk_body_type_id": fkBodyTypeId,
        "fk_vehicle_features_id": fkVehicleFeaturesId,
        "year": year,
        "location": location,
        "latitude": latitude,
        "longitude": longitude,
        "km_driven": kmDriven,
        "insurance_validity":
            "${insuranceValidity!.year.toString().padLeft(4, '0')}-${insuranceValidity!.month.toString().padLeft(2, '0')}-${insuranceValidity!.day.toString().padLeft(2, '0')}",
        "price": price,
        "type": type,
        "description": description,
        "deal_price": dealPrice,
        "is_new_arrival": isNewArrival,
        "is_popular": isPopular,
        "status": statusValues.reverse[status],
        "vehicle_status": vehicleStatus,
        "is_verified": isVerified,
        "remark": remark,
        "percentage": percentage,
        "total_amount": totalAmount,
        "refund_time_period": refundTimePeriod,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "user_details": userDetails?.toJson(),
        "km_away": kmAway,
        "booking_vehicle_status": bookingVehicleStatus,
        "booking_status": bookingStatus,
        "booking_id": bookingId,
        "is_favorite": isFavorite,
        "listed_days": listedDays,
        "images": images == null
            ? []
            : List<dynamic>.from(images!.map((x) => x.toJson())),
        "overview_details": overviewDetails == null
            ? []
            : List<dynamic>.from(overviewDetails!.map((x) => x.toJson())),
        "specification_details": specificationDetails == null
            ? []
            : List<dynamic>.from(specificationDetails!.map((x) => x.toJson())),
        "vehicle_detail_feature_vehicles": vehicleDetailFeatureVehicles == null
            ? []
            : List<dynamic>.from(
                vehicleDetailFeatureVehicles!.map((x) => x.toJson())),
        "brand": brand?.toJson(),
        "category": category?.toJson(),
        "sub_category": subCategory?.toJson(),
        "vehicle_model": vehicleModel?.toJson(),
        "vehicle_variant": vehicleVariant?.toJson(),
        "vehicle_color": vehicleColor?.toJson(),
        "transmission": transmission?.toJson(),
        "fuel_type": fuelType?.toJson(),
        "body_type": bodyType?.toJson(),
        "vehicle_type": vehicleType?.toJson(),
        "vehicle_info_details": vehicleInfoDetails == null
            ? []
            : List<dynamic>.from(vehicleInfoDetails!.map((x) => x.toJson())),
        "vehicle_overview_details": vehicleOverviewDetails == null
            ? []
            : List<dynamic>.from(
                vehicleOverviewDetails!.map((x) => x.toJson())),
      };
}

class BodyType {
  int? id;
  int? fkVehicleTypeId;
  String? name;
  int? createdBy;
  int? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  Status? status;
  dynamic deletedAt;
  int? fkCategoryId;
  int? fkBrandId;
  int? fkVehicleModelId;

  BodyType({
    this.id,
    this.fkVehicleTypeId,
    this.name,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.status,
    this.deletedAt,
    this.fkCategoryId,
    this.fkBrandId,
    this.fkVehicleModelId,
  });

  factory BodyType.fromRawJson(String str) =>
      BodyType.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BodyType.fromJson(Map<String, dynamic> json) => BodyType(
        id: json["id"],
        fkVehicleTypeId: json["fk_vehicle_type_id"],
        name: json["name"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        status: statusValues.map[json["status"]],
        deletedAt: json["deleted_at"],
        fkCategoryId: json["fk_category_id"],
        fkBrandId: json["fk_brand_id"],
        fkVehicleModelId: json["fk_vehicle_model_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fk_vehicle_type_id": fkVehicleTypeId,
        "name": name,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "status": statusValues.reverse[status],
        "deleted_at": deletedAt,
        "fk_category_id": fkCategoryId,
        "fk_brand_id": fkBrandId,
        "fk_vehicle_model_id": fkVehicleModelId,
      };
}

enum Status { ACTIVE }

final statusValues = EnumValues({"active": Status.ACTIVE});

class Brand {
  int? id;
  int? fkVehicleTypeId;
  String? name;
  String? icon;
  Status? status;
  int? createdBy;
  int? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  int? fkBrandId;

  Brand({
    this.id,
    this.fkVehicleTypeId,
    this.name,
    this.icon,
    this.status,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.fkBrandId,
  });

  factory Brand.fromRawJson(String str) => Brand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        id: json["id"],
        fkVehicleTypeId: json["fk_vehicle_type_id"],
        name: json["name"],
        icon: json["icon"],
        status: statusValues.map[json["status"]]!,
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        fkBrandId: json["fk_brand_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fk_vehicle_type_id": fkVehicleTypeId,
        "name": name,
        "icon": icon,
        "status": statusValues.reverse[status],
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "fk_brand_id": fkBrandId,
      };
}

class Image {
  int? id;
  int? fkVehicleDetailsId;
  String? imageUrl;
  int? createdBy;
  int? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;

  Image({
    this.id,
    this.fkVehicleDetailsId,
    this.imageUrl,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory Image.fromRawJson(String str) => Image.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        fkVehicleDetailsId: json["fk_vehicle_details_id"],
        imageUrl: json["image_url"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fk_vehicle_details_id": fkVehicleDetailsId,
        "image_url": imageUrl,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
      };
}

class OverviewDetail {
  int? id;
  int? fkVehicleDetailsId;
  int? fkVehicleOverviewId;
  String? overviewDetails;
  int? createdBy;
  int? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  Brand? overview;

  OverviewDetail({
    this.id,
    this.fkVehicleDetailsId,
    this.fkVehicleOverviewId,
    this.overviewDetails,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.overview,
  });

  factory OverviewDetail.fromRawJson(String str) =>
      OverviewDetail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OverviewDetail.fromJson(Map<String, dynamic> json) => OverviewDetail(
        id: json["id"],
        fkVehicleDetailsId: json["fk_vehicle_details_id"],
        fkVehicleOverviewId: json["fk_vehicle_overview_id"],
        overviewDetails: json["overview_details"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        overview:
            json["overview"] == null ? null : Brand.fromJson(json["overview"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fk_vehicle_details_id": fkVehicleDetailsId,
        "fk_vehicle_overview_id": fkVehicleOverviewId,
        "overview_details": overviewDetails,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "overview": overview?.toJson(),
      };
}

class SpecificationDetail {
  int? id;
  int? fkVehicleDetailsId;
  int? fkSpecificationId;
  String? specificationDetails;
  int? createdBy;
  int? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  BodyType? specification;

  SpecificationDetail({
    this.id,
    this.fkVehicleDetailsId,
    this.fkSpecificationId,
    this.specificationDetails,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.specification,
  });

  factory SpecificationDetail.fromRawJson(String str) =>
      SpecificationDetail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SpecificationDetail.fromJson(Map<String, dynamic> json) =>
      SpecificationDetail(
        id: json["id"],
        fkVehicleDetailsId: json["fk_vehicle_details_id"],
        fkSpecificationId: json["fk_specification_id"],
        specificationDetails: json["specification_details"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        specification: json["specification"] == null
            ? null
            : BodyType.fromJson(json["specification"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fk_vehicle_details_id": fkVehicleDetailsId,
        "fk_specification_id": fkSpecificationId,
        "specification_details": specificationDetails,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "specification": specification?.toJson(),
      };
}

class UserDetails {
  int? id;
  String? name;
  String? countryCode;
  String? mobile;
  dynamic vendor;

  UserDetails({
    this.id,
    this.name,
    this.countryCode,
    this.mobile,
    this.vendor,
  });

  factory UserDetails.fromRawJson(String str) =>
      UserDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
        id: json["id"],
        name: json["name"],
        countryCode: json["country_code"],
        mobile: json["mobile"],
        vendor: json["vendor"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "country_code": countryCode,
        "mobile": mobile,
        "vendor": vendor,
      };
}

class VehicleDetailFeatureVehicle {
  int? id;
  int? fkVehicleDetailId;
  int? vehicleFeatureId;
  DateTime? createdAt;
  DateTime? updatedAt;
  BodyType? vehicleFeature;

  VehicleDetailFeatureVehicle({
    this.id,
    this.fkVehicleDetailId,
    this.vehicleFeatureId,
    this.createdAt,
    this.updatedAt,
    this.vehicleFeature,
  });

  factory VehicleDetailFeatureVehicle.fromRawJson(String str) =>
      VehicleDetailFeatureVehicle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VehicleDetailFeatureVehicle.fromJson(Map<String, dynamic> json) =>
      VehicleDetailFeatureVehicle(
        id: json["id"],
        fkVehicleDetailId: json["fk_vehicle_detail_id"],
        vehicleFeatureId: json["vehicle_feature_id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        vehicleFeature: json["vehicle_feature"] == null
            ? null
            : BodyType.fromJson(json["vehicle_feature"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fk_vehicle_detail_id": fkVehicleDetailId,
        "vehicle_feature_id": vehicleFeatureId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "vehicle_feature": vehicleFeature?.toJson(),
      };
}

class VehicleInfoDetail {
  int? id;
  int? fkVehicleDetailsId;
  int? fkVehicleInfoId;
  String? infoDetails;
  int? createdBy;
  int? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  Brand? vehicleInfo;

  VehicleInfoDetail({
    this.id,
    this.fkVehicleDetailsId,
    this.fkVehicleInfoId,
    this.infoDetails,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.vehicleInfo,
  });

  factory VehicleInfoDetail.fromRawJson(String str) =>
      VehicleInfoDetail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VehicleInfoDetail.fromJson(Map<String, dynamic> json) =>
      VehicleInfoDetail(
        id: json["id"],
        fkVehicleDetailsId: json["fk_vehicle_details_id"],
        fkVehicleInfoId: json["fk_vehicle_info_id"],
        infoDetails: json["info_details"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        vehicleInfo: json["vehicle_info"] == null
            ? null
            : Brand.fromJson(json["vehicle_info"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fk_vehicle_details_id": fkVehicleDetailsId,
        "fk_vehicle_info_id": fkVehicleInfoId,
        "info_details": infoDetails,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "vehicle_info": vehicleInfo?.toJson(),
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
