import 'package:flutter/material.dart';
import 'package:ternakku/module/pemesanan/tabs/order_belumbayar.dart';
import 'package:ternakku/module/pemesanan/tabs/order_sedangdiproses.dart';
import 'package:ternakku/module/pemesanan/tabs/order_semua.dart';

import '../../global/colors.dart';

class OrderIndex extends StatelessWidget {
  int selectedTab;
  OrderIndex(this.selectedTab);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: selectedTab,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Rincian Pemesanan'),
            bottom: TabBar(
              indicatorColor: Warna.primaryGreen,
              labelColor: Colors.black,
              onTap: (index) {},
              tabs: [
                Tab(text: ("Semua")),
                Tab(text: ("Belum Bayar")),
                Tab(text: ("Sedang Diproses")),
              ],
            ),
          ),
          body: TabBarView(children: [
            OrderSemua(),
            OrderBelumBayar(),
            OrderDiproses(),
          ]),
        ));
  }
}
