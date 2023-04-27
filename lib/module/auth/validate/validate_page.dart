import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:ternakku/global/colors.dart';
import 'package:ternakku/module/auth/validate/controller/validate_controller.dart';

class ValidatePage extends StatelessWidget {
  ValidatePage({super.key});
  ValidateController c = Get.put(ValidateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.025),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),
                ],
              ),
            ),
            Center(
              child: LoadingAnimationWidget.discreteCircle(
                color: Warna.primaryGreen,
                size: MediaQuery.of(context).size.width * 0.35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
