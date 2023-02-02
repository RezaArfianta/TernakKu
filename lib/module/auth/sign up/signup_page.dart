import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ternakku/global/colors.dart';
import 'package:ternakku/ternakku_index.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscureText = true;
  bool _checked = false;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20),
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
                    'Create New\nAccount',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  height: 50,
                  width: 430,
                  child: TextFormField(
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
                          borderSide:
                              BorderSide(width: 1, color: Warna.secondaryGreen),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 50,
                  width: 430,
                  child: TextFormField(
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
                          borderSide:
                              BorderSide(width: 1, color: Warna.secondaryGreen),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 50,
                  width: 430,
                  child: TextFormField(
                    textAlign: TextAlign.left,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Warna.fadeGrey),
                      filled: true,
                      hintText: 'No. Telp',
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Warna.fadeGrey),
                          borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Warna.secondaryGreen),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 50,
                  width: 430,
                  child: TextFormField(
                    textAlign: TextAlign.left,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Warna.fadeGrey),
                      filled: true,
                      hintText: 'Password',
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Warna.fadeGrey),
                          borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Warna.secondaryGreen),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  )),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                width: 430,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  color: Warna.primaryGreen,
                  child: TextButton(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TernakKuIndex()));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
