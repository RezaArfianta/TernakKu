import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ternakku/global/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Create New \nAccount',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 50,
                  width: 440,
                  child: TextFormField(
                    textAlign: TextAlign.left,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black26),
                      // iconColor: Colors.black12,
                      filled: true,
                      // prefixIcon: Icon(Icons.email),
                      hintText: 'Username',
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.black12),
                          borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Warna.secondaryGreen),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
