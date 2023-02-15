import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ternakku/global/colors.dart';

class InformasiUmum extends StatelessWidget {
  const InformasiUmum({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      // appBar: AppBar(
      //   leading: IconButton(
      //       onPressed: () {
      //         Get.back();
      //       },
      //       icon: Icon(
      //         Icons.arrow_back_ios,
      //         color: Colors.black,
      //       )),
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     title,
      //     style: TextStyle(color: Colors.black),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(color: Warna.secondaryGreen),
              ),
              SizedBox(
                height: 20,
              ),
              Text(subtitle)
            ],
          ),
        ),
      ),
    );
  }
}
