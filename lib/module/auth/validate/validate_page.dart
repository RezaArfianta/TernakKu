import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:ternakku/module/auth/validate/controller/validate_controller.dart';

class ValidatePage extends StatelessWidget {
  ValidatePage({super.key});
  ValidateController c = Get.put(ValidateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            LoadingAnimationWidget.staggeredDotsWave(
              color: Colors.purple,
              size: 200,
            )
          ],
        ),
      ),
    );
  }
}
