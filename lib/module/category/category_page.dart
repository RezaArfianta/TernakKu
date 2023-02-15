import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ternakku/module/category/tabs/alat_tab.dart';
import 'package:ternakku/module/category/tabs/all_tab.dart';
import 'package:ternakku/module/category/tabs/makanan_tab.dart';
import 'package:ternakku/module/category/tabs/obat_tab.dart';
import '../../global/colors.dart';

class CategoryPage extends StatelessWidget {
  int selectedPage;
  CategoryPage(this.selectedPage);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: selectedPage,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            bottom: TabBar(
              indicatorColor: Warna.primaryGreen,
              labelColor: Colors.black,
              onTap: (index) {
                // Tab index when user select it, it start from zero
              },
              tabs: [
                Tab(text: ("Semua")),
                Tab(text: ("Alat")),
                Tab(text: ("Obat")),
                Tab(text: ("Makanan")),
              ],
            ),
            title: TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Warna.primaryGreen)),
                hintText: 'Search',
                suffixIcon: Icon(Icons.search),
                focusColor: Warna.primaryGreen,
                // filled: true,
              ),
            ),
          ),
          body: TabBarView(children: [
            new AllTab(),
            new AlatTab(),
            new ObatTab(),
            new MakananTab(),
          ]),
        ));
  }
}
