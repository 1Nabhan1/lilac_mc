import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:lilac_mc_tst/core/constants/const_data/const_data.dart';
import 'package:lilac_mc_tst/data/apiClient/api_service/api_service.dart';
import 'package:lilac_mc_tst/presentation/sign_in_screen/widget/sign_custom_field.dart';
import 'package:lilac_mc_tst/routes/app_routes/app_routes.dart';

import '../../generated/assets.dart';
import 'controller/sign_in_controlleer.dart';

class SignInScreen extends GetView<SignInController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 120,
            ),
            SvgPicture.asset(Assets.assetsLogo),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Text(
                'Login With Your Email &\nPassword',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SignCustomField(
              hint: 'Enter Your Email',
              head: 'Email',
              prefix: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  Assets.assetsSms,
                ),
              ),
              controller: controller.email,
            ),
            SizedBox(
              height: 30,
            ),
            SignCustomField(
              controller: controller.password,
              hint: 'Enter Your Password',
              head: 'Password',
              prefix: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  Assets.assetsLock,
                ),
              ),
              suffix: Icon(
                CupertinoIcons.eye,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(240.w, 40.h),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    backgroundColor: ConstData.btnClr,
                    foregroundColor: Colors.white),
                onPressed: () {
                  ApiService().login(
                      email: controller.email.text,
                      password: controller.password.text,
                      context: context);
                },
                child: Text('Login')),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                  text: TextSpan(
                      text: "Don't Have an Account? ",
                      style: TextStyle(color: Colors.black),
                      children: [
                    TextSpan(
                        text: 'Register', style: TextStyle(color: Colors.blue))
                  ])),
            )
          ],
        ),
      ),
    );
  }
}
