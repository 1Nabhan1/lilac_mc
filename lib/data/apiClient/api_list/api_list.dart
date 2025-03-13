class ApiList {
  static String baseUrl = 'https://test.vehup.com/api';
  static String login = '$baseUrl/vendor-login';
  static String vehicleDetails = '$baseUrl/vendor/get-vehicle-details';
  static String getBrandData = '$baseUrl/vendor/get-brand-data/1';
  static String getModelData =
      '$baseUrl/vendor/get-model-data/1';
  static String getVariantData =
      '$baseUrl/vendor/get-variant-data/1';
  static String addReq = '$baseUrl/add-requirement';
  static String getVendorReq = '$baseUrl/get-vendor-requirements';
}
