import 'package:flutter/material.dart';
import 'package:ternakku/global/colors.dart';

class CheckoutIndex extends StatefulWidget {
  CheckoutIndex({super.key});

  @override
  State<CheckoutIndex> createState() => _CheckoutIndexState();
}

class _CheckoutIndexState extends State<CheckoutIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  color: Warna.secondaryGreen.withOpacity(0.5),
                  child: Text('Delivery Address'),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(mainAxisSize: MainAxisSize.max, children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image(
                          image: NetworkImage('https://picsum.photos/200/300'),
                          width: 80,
                          height: 80,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              RichText(
                                  text: TextSpan(
                                      text: 'Claudia | ',
                                      children: [TextSpan(text: '08128212')])),
                              RichText(
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  text: TextSpan(
                                      text:
                                          'Kp. Citeko Rt04/Rw08 Desa Citeko Kecamatan Cisarua Kabupaten Bogor')),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Card(
                    // elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Warna.fadeGrey)),
                    child: Padding(
                      padding: EdgeInsets.all(4),
                      child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Image(
                                  image: NetworkImage(
                                      'https://picsum.photos/200/300'),
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
                                      text: TextSpan(
                                          text:
                                              'Obat Kambing')), //produk pesanan
                                  RichText(
                                      text: TextSpan(
                                          text: 'Rp. 30.000')), //tgl pemesanan
                                  RichText(
                                      text: TextSpan(
                                          text: 'x5')), //status pemesanan
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Card(
                    margin: EdgeInsets.all(10),
                    // elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Warna.fadeGrey)),
                    child: Padding(
                      padding: EdgeInsets.all(4),
                      child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              height: 10,
                              width: 5,
                            ),
                            Text('Catatan'),
                            Spacer(),
                            Text(
                              'tambah ctt',
                              style: TextStyle(color: Warna.fadeGrey),
                            ),
                            SizedBox(
                              width: 5,
                              height: 10,
                            )
                          ]),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
