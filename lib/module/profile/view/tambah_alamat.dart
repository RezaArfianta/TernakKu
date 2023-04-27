import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ternakku/module/profile/controller/profile_controller.dart';

import '../../../global/colors.dart';

class AddAddress extends StatelessWidget {
  AddAddress({super.key});
  ProfileController c = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text(
          'Tambah Alamat',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Warna.fadeGrey),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                    controller: c.namaPenerima,
                    decoration: InputDecoration(
                        hintText: 'Nama Penerima', border: InputBorder.none),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Warna.fadeGrey),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                    controller: c.noTelpPenerima,
                    decoration: InputDecoration(
                        hintText: 'Nomor Telepon', border: InputBorder.none),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Warna.fadeGrey),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                    controller: c.provinsi,
                    decoration: InputDecoration(
                        hintText: 'Provinsi', border: InputBorder.none),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Warna.fadeGrey),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                    controller: c.kota,
                    decoration: InputDecoration(
                        hintText: 'Kota', border: InputBorder.none),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Warna.fadeGrey),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                    controller: c.kecamatan,
                    decoration: InputDecoration(
                        hintText: 'Kecamatan', border: InputBorder.none),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Warna.fadeGrey),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                    controller: c.kodePos,
                    decoration: InputDecoration(
                        hintText: 'Kode Pos', border: InputBorder.none),
                  )),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 100,
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Warna.fadeGrey),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.only(left: 10),
                    child: TextField(
                      controller: c.additionalNotes,
                      minLines: 1,
                      maxLines: 5,
                      decoration: InputDecoration(
                          hintText: 'Detail Lainnya (cth: Blok/Jln, patokan)',
                          border: InputBorder.none),
                    )),
              ),
              SizedBox(
                height: 50,
              ),
              Row(children: [
                SizedBox(
                  width: 1,
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    c.addAddress();
                  },
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
