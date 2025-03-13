import 'package:lilac_mc_tst/routes/app_routes/app_routes.dart';


import '../../../generated/assets.dart';

class HomeData {
  List<dynamic> gridData = [
    {
      'img': Assets.assetsCar,
      'count': '100',
      'title': 'Total Vehicle',
      'route': AppRoutes.totalVehicle
    },
    {
      'img': Assets.assetsHand,
      'count': '50',
      'title': 'Total Booking',
      'route': AppRoutes.totalVehicle
    },
    {
      'img': Assets.assetsHand2,
      'count': '25',
      'title': 'C2B Concept',
      'route': AppRoutes.totalVehicle
    },
    {
      'img': Assets.assetsCar2,
      'count': '35',
      'title': 'Vehicle for Sale',
      'route': AppRoutes.totalVehicle
    },
  ];
}
