import 'package:flutter/material.dart';

import '../../../global/colors.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({super.key});

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
