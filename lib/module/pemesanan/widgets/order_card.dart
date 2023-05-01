import 'package:flutter/material.dart';

import '../../../global/colors.dart';

class OrderCard extends StatefulWidget {
  const OrderCard({super.key});

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: Warna.secondaryGreen)),
        child: Padding(
          padding: EdgeInsets.all(4),
          child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image(
                      image: NetworkImage('https://picsum.photos/200/300'),
                      width: 80,
                      height: 80,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: 130,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      RichText(
                          text:
                              TextSpan(text: 'Obat Kambing')), //produk pesanan
                      RichText(
                          text: TextSpan(text: '05 Juni 2023')), //tgl pemesanan
                      RichText(
                          text: TextSpan(text: 'Dibayar')), //status pemesanan
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
