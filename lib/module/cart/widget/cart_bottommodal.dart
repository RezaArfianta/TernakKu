import 'package:flutter/material.dart';

import '../../../global/colors.dart';

class CartBottomModal extends StatefulWidget {
  const CartBottomModal({super.key});

  @override
  State<CartBottomModal> createState() => _CartBottomModalState();
}

class _CartBottomModalState extends State<CartBottomModal> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text('Rincian Belanja'),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text('Total:'),
                  Spacer(),
                  Text('Rp. 535.000'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text('Diskon:'),
                  Spacer(),
                  Text('-Rp. 35.000'),
                ],
              ),
            ),
            Divider(
              color: Warna.fadeGrey,
              thickness: 0.5,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text('Jumlah Total:'),
                  Spacer(),
                  Text('Rp. 500.000'),
                ],
              ),
            ),
          ],
        ));
  }
}
