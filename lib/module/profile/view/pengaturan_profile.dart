import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supercharged/supercharged.dart';
import 'package:ternakku/module/profile/controller/profile_controller.dart';
import 'package:ternakku/module/profile/view/tambah_alamat.dart';
import '../../../global/colors.dart';

class ProfileSetting extends StatelessWidget {
  ProfileSetting({super.key});
  ProfileController c = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Text(
          'Pengaturan Profil',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  // margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Pengaturan Profil')),
              Container(
                  // padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Warna.fadeGrey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      padding: EdgeInsets.all(7),
                      child: Row(
                        children: [
                          Text('Nama Lengkap'),
                          Spacer(),
                          Text(
                              c.profileName.count() > 0
                                  ? c.profileName[0]['nama_pengguna']
                                  : 'Tunggu.....',
                              style: TextStyle(color: Warna.fadeGrey)),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Warna.fadeGrey,
                    ),
                    Container(
                      padding: EdgeInsets.all(7),
                      child: Row(
                        children: [
                          Text('Email'),
                          Spacer(),
                          Text(
                            c.profileName.count() > 0
                                ? c.profileName[0]['email']
                                : 'Tunggu.....',
                            style: TextStyle(color: Warna.fadeGrey),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Warna.fadeGrey,
                    ),
                    Container(
                      padding: EdgeInsets.all(7),
                      child: Row(
                        children: [
                          Text('Username'),
                          Spacer(),
                          Text(
                              c.profileName.count() > 0
                                  ? c.profileName[0]['username']
                                  : 'Tunggu.....',
                              style: TextStyle(color: Warna.secondaryGreen))
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Warna.fadeGrey,
                    ),
                    Container(
                      padding: EdgeInsets.all(7),
                      child: Row(
                        children: [
                          Text(
                            'Nomor Handphone',
                          ),
                          Spacer(),
                          Text(
                              c.profileName.count() > 0
                                  ? c.profileName[0]['no_telp'].toString()
                                  : 'Tunggu.....',
                              style: TextStyle(color: Warna.fadeGrey))
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Warna.fadeGrey,
                    ),
                    Container(
                      padding: EdgeInsets.all(7),
                      child: Row(
                        children: [
                          Text(
                            'Alamat',
                          ),
                          Spacer(),
                          Text('Jl. Cimahpar',
                              style: TextStyle(color: Warna.fadeGrey))
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(7),
                      child: Row(
                        children: [
                          Text('Tambah Alamat'),
                          Spacer(),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AddAddress()));
                              },
                              icon: Icon(Icons.add))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ])),
              // Flexible(
              //     child: Align(
              //   alignment: FractionalOffset.bottomCenter,
              //   child: ElevatedButton(onPressed: () {}, child: Text('Save')),
              // ))
              SizedBox(
                height: 50,
              ),

              Row(children: [
                SizedBox(
                  width: 1,
                ),
                Spacer(),
                InkWell(
                  child: Container(
                    width: 250,
                    height: 50,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            // spreadRadius: 1,
                            blurRadius: 1)
                      ],
                      color: Warna.secondaryGreen,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Save',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: 1,
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
