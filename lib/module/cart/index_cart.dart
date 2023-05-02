import 'package:flutter/material.dart';
import 'package:ternakku/global/colors.dart';
import 'package:ternakku/module/cart/widget/cart_bottommodal.dart';
import 'package:ternakku/module/cart/widget/cart_card.dart';
import 'package:ternakku/module/checkout/checkout_index.dart';

class CartIndex extends StatefulWidget {
  CartIndex({super.key});

  @override
  State<CartIndex> createState() => _CartIndexState();
}

class _CartIndexState extends State<CartIndex> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Keranjang',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 200,
                  child: CheckboxListTile(
                    title: Text('Pilih semua'),
                    value: checked,
                    onChanged: (value) {},
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.delete))
              ],
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                itemCount: 15,
                itemBuilder: ((context, index) {
                  return CartCard();
                }),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 130,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        RichText(text: TextSpan(text: 'Total Pembayaran')),
                        RichText(text: TextSpan(text: 'Rp. 500.000')),
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return CartBottomModal();
                            });
                      },
                      icon: Icon(Icons.train)),
                  Spacer(),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CheckoutIndex()));
                      },
                      child: Text('Beli Sekarang'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
