import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lilac_mc_tst/data/apiClient/api_list/api_list.dart';
import 'package:lilac_mc_tst/presentation/requirement_screen/modal/model_data.dart';
import 'package:lilac_mc_tst/presentation/vehicle_details_inner/model/vehicle_details_model.dart';

import '../../../presentation/requirement_screen/modal/brand_data_model.dart';
import '../../../presentation/requirement_screen/modal/variant_data.dart';
import '../../../presentation/requirement_screen/modal/vendor_req_data.dart';
import '../../../routes/app_routes/app_routes.dart';
import '../http_method/http_method.dart';

class ApiService {
  final _box = GetStorage();
  final httpMethod = HttpMethod();

  Future<void> login(
      {required String email,
      required String password,
      required BuildContext context}) async {
    try {
      final response = await httpMethod.post(
          url: ApiList.login,
          body: {'email': email, 'password': password},
          headers: {});
      if (response['statusCode'] == 200) {
        final data = jsonDecode(response['body']);
        _box.write('token', data['token']);
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(data['message'])));
        Get.offAllNamed(AppRoutes.bottomNavScreen);
      } else {
        final data = jsonDecode(response['body']);
        final message = data['message'] as List;
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(message.join(""))));
      }
    } catch (e, s) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Something Went Wrong')));
      log(e.toString(), error: e, stackTrace: s);
    }
  }

  Future<BrandData?> getBrandData() async {
    try {
      final response = await httpMethod.get(url: ApiList.getBrandData);
      final data = jsonDecode(response['body']);
      return BrandData.fromJson(data);
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      return null;
    }
  }

  Future<BrandModel?> getBrandModelData(int brandId) async {
    try {
      final response =
          await httpMethod.get(url: '${ApiList.getModelData}/$brandId');
      final data = jsonDecode(response['body']);
      return BrandModel.fromJson(data);
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      return null;
    }
  }

  Future<VariantDataModel?> getVariantData(
      {required int brandId, required int modelId}) async {
    try {
      final response = await httpMethod.get(
          url: '${ApiList.getVariantData}/$brandId/$modelId');
      final data = jsonDecode(response['body']);
      return VariantDataModel.fromJson(data);
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      return null;
    }
  }

  Future<void> addReq(
      {required int brand,
      required int model,
      required int variant,
      required int transmission,
      required int fuel,
      required int color,
      required String year,
      required BuildContext context}) async {
    try {
      final response = await httpMethod.post(url: ApiList.addReq, body: {
        'vehicle_type_id': '1',
        'brand_id': brand.toString(),
        'vehicle_model_id': model.toString(),
        'vehicle_variant_id': variant.toString(),
        'transmission_id': transmission.toString(),
        'fuel_type_id': fuel.toString(),
        'vehicle_color_id': color.toString(),
        'year': year.toString(),
      });
      if (response['statusCode'] == 200) {
        final data = jsonDecode(response['body']);
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(data['message'])));
        Get.offAllNamed(AppRoutes.bottomNavScreen);
      }
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
    }
  }

  Future<VendorReq?> fetchVendorReq() async {
    try {
      final response = await httpMethod.get(url: ApiList.getVendorReq);
      final data = jsonDecode(response['body']);
      return VendorReq.fromJson(data);
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      return null;
    }
  }

  Future<VehicleDetailsModel?> fetchVehicleDetails(int id) async {
    try {
      final response = await httpMethod.get(url: "${ApiList.vehicleDetails}/$id");
      final data = jsonDecode(response['body']);
      return VehicleDetailsModel.fromJson(data);
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      return null;
    }
  }
}
