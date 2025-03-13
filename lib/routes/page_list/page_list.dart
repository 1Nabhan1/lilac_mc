import 'package:get/get.dart';
import 'package:lilac_mc_tst/presentation/bottom_nav/binding/bottom_nav_binding.dart';
import 'package:lilac_mc_tst/presentation/bottom_nav/bottom_nav_screen.dart';
import 'package:lilac_mc_tst/presentation/home_screen/binding/home_binding.dart';
import 'package:lilac_mc_tst/presentation/home_screen/home_screen.dart';
import 'package:lilac_mc_tst/presentation/requirement_screen/binding/req_binding.dart';
import 'package:lilac_mc_tst/presentation/requirement_screen/pages/requirement_field_screen.dart';
import 'package:lilac_mc_tst/presentation/requirement_screen/pages/requirement_select_screen.dart';
import 'package:lilac_mc_tst/presentation/splash_screen/binding/splash_binding.dart';
import 'package:lilac_mc_tst/presentation/splash_screen/splash_screen.dart';
import 'package:lilac_mc_tst/presentation/total_vehicle/binding/total_vehicle_bindings.dart';
import 'package:lilac_mc_tst/presentation/total_vehicle/total_vehicle.dart';
import 'package:lilac_mc_tst/presentation/vehicle_details_inner/binding/vehicle_details_binding.dart';
import 'package:lilac_mc_tst/presentation/vehicle_details_inner/controller/vehicle_inner_controller.dart';
import 'package:lilac_mc_tst/presentation/vehicle_details_inner/vehicle_details_inner.dart';
import 'package:lilac_mc_tst/routes/app_routes/app_routes.dart';

import '../../presentation/sign_in_screen/binding/sign_in_binding.dart';
import '../../presentation/sign_in_screen/sign_in_screen.dart';

class PageList {
  static var pages = [
    GetPage(
        name: AppRoutes.splashScreen,
        page: () => SplashScreen(),
        binding: SplashBinding()),
    GetPage(
        name: AppRoutes.signInScreen,
        page: () => SignInScreen(),
        binding: SignInBinding()),
    GetPage(
        name: AppRoutes.homeScreen,
        page: () => HomeScreen(),
        binding: HomeBinding()),
    GetPage(
        name: AppRoutes.bottomNavScreen,
        page: () => BottomNavScreen(),
        binding: BottomNavBinding()),
    GetPage(
        name: AppRoutes.totalVehicle,
        page: () => TotalVehicle(),
        binding: TotalVehicleBindings()),
    GetPage(
        name: AppRoutes.reqSelectScreen,
        page: () => RequirementSelectScreen(),
        // binding: ReqBinding()
  ),
    GetPage(
        name: AppRoutes.reqFieldScreen,
        page: () => RequirementFieldScreen(),
        binding: ReqBinding()),GetPage(
        name: AppRoutes.vehicleDetailsScreen,
        page: () => VehicleDetailsInner(),
        binding: VehicleDetailsBinding()),
  ];
}
