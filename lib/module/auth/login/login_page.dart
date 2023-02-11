import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ternakku/global/colors.dart';
import 'package:ternakku/module/auth/sign%20up/signup_page.dart';
import 'package:ternakku/ternakku_index.dart';
import 'package:get/get.dart';

import 'controller/loginpage_controller.dart';

class LoginPage extends StatelessWidget {
  LoginController c = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    LoginController c = Get.put(LoginController());

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
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
                  padding: EdgeInsets.only(left: 25),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Login to your\nAccount',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.9,
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
                              borderSide:
                                  BorderSide(width: 1, color: Warna.fadeGrey),
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
                // Container(
                //   height: 50,
                //   width: 200,
                //   alignment: Alignment.center,
                //   child: Transform.scale(
                //     scale: 0.8,
                //     child: CheckboxListTile(
                //       activeColor: Warna.primaryGreen,
                //       value: checked,
                //       onChanged: (value) {},
                //       title: Text(
                //         'Remember me',
                //         // style: TextStyle(fontSize: 14),
                //       ),
                //       controlAffinity: ListTileControlAffinity.leading,
                //       visualDensity:
                //           const VisualDensity(horizontal: -4.0, vertical: -4.0),
                //     ),
                //   ),
                // ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    color: Warna.primaryGreen,
                    child: TextButton(
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        c.loginAccount(context);
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Dont have an account?",
                      style: TextStyle(color: Colors.black38),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpPage()));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Warna.primaryGreen),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
