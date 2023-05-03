import 'package:flutter/material.dart';

import '../../../global/colors.dart';

class CartCard extends StatefulWidget {
  final dynamic cart;

  const CartCard(this.cart, {super.key});

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(widget.cart);
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: Warna.secondaryGreen)),
        child: Padding(
          padding: EdgeInsets.all(4),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Checkbox(
                  value: checked,
                  onChanged: (value) {},
                ),
                Image(
                  image: NetworkImage('https://picsum.photos/200/300'),
                  width: 100,
                  height: 80,
                ),
                SizedBox(
                  width: 130,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      RichText(text: TextSpan(text: 'Obat Kambing')),
                      RichText(text: TextSpan(text: 'Rp. 25.000')),
                      RichText(text: TextSpan(text: '250ml')),
                    ],
                  ),
                ),
                plusMinusButton(context),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red.shade800,
                    )),
              ]),
        ),
      ),
    );
  }

  Widget plusMinusButton(BuildContext context) {
    String quantity;
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
        Text('10'),
        IconButton(onPressed: () {}, icon: Icon(Icons.add))
      ],
    );
  }
}
