import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ternakku/global/colors.dart';
import 'package:ternakku/module/auth/login/login_page.dart';
import 'package:ternakku/module/auth/sign%20up/controller/signuppage_controller.dart';
import 'package:ternakku/ternakku_index.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  SignupController c = Get.put(SignupController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 200,
                    width: 200,
                    child: Card(
                      color: Warna.secondaryGreen,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              bottomLeft: Radius.circular(95),
                              bottomRight: Radius.circular(85))),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 140,
                    width: 140,
                    child: Card(
                      color: Warna.primaryGreen,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(90),
                              bottomLeft: Radius.circular(85),
                              bottomRight: Radius.circular(80))),
                    ),
                  ),
                ),
              ]),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1),
                child: Column(
                  children: [
                    Container(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Daftarkan Akun\nAnda',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          controller: c.namaPengguna,
                          textAlign: TextAlign.left,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Warna.fadeGrey),
                            filled: true,
                            hintText: 'Nama Pengguna',
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Warna.fadeGrey),
                                borderRadius: BorderRadius.circular(12)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: Warna.secondaryGreen),
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          controller: c.email,
                          textAlign: TextAlign.left,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Warna.fadeGrey),
                            filled: true,
                            hintText: 'Email',
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Warna.fadeGrey),
                                borderRadius: BorderRadius.circular(12)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: Warna.secondaryGreen),
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          controller: c.noTelp,
                          textAlign: TextAlign.left,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Warna.fadeGrey),
                            filled: true,
                            hintText: 'No. Telepon',
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Warna.fadeGrey),
                                borderRadius: BorderRadius.circular(12)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: Warna.secondaryGreen),
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          controller: c.username,
                          textAlign: TextAlign.left,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Warna.fadeGrey),
                            filled: true,
                            hintText: 'Username',
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Warna.fadeGrey),
                                borderRadius: BorderRadius.circular(12)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: Warna.secondaryGreen),
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Obx(
                          () => TextFormField(
                            obscureText: c.obscureText.value,
                            controller: c.password,
                            textAlign: TextAlign.left,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    c.toggle();
                                  },
                                  icon: Icon(
                                    Icons.remove_red_eye,
                                    color: c.obscureText.value == false
                                        ? Warna.primaryGreen
                                        : Warna.fadeGrey,
                                  )),
                              hintStyle: TextStyle(color: Warna.fadeGrey),
                              filled: true,
                              hintText: 'Password',
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Warna.fadeGrey),
                                  borderRadius: BorderRadius.circular(12)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Warna.secondaryGreen),
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        color: Warna.primaryGreen,
                        child: TextButton(
                          child: Text(
                            "Daftar",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            c.makeAccount(context);
                          },
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Sudah punya akun?",
                          style: TextStyle(color: Colors.black38),
                        ),
                        TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text(
                              "Masuk di sini",
                              style: TextStyle(color: Warna.primaryGreen),
                            ))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
