import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ternakku/module/category/tabs/alat_tab.dart';
import 'package:ternakku/module/category/tabs/all_tab.dart';
import 'package:ternakku/module/category/tabs/makanan_tab.dart';
import 'package:ternakku/module/category/tabs/obat_tab.dart';

class CategoryPage extends StatelessWidget {
  int selectedPage;
  CategoryPage(this.selectedPage);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: selectedPage,
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              labelColor: Theme.of(context).textTheme.bodyMedium!.color,
              onTap: (index) {
                // Tab index when user select it, it start from zero
              },
              tabs: [
                Tab(text: ("Semua")),
                Tab(text: ("Alat")),
                Tab(text: ("Obat")),
                Tab(text: ("Makanan")),
                Tab(text: ("Makanan")),
              ],
            ),
            title: TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(suffixIcon: Icon(Icons.search)),
            ),
          ),
          body: TabBarView(children: [
            new AllTab(),
            new ObatTab(),
            new MakananTab(),
            new AlatTab(),
          ]),
        ));
  }
}
