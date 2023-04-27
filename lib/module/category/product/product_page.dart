import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../global/colors.dart';

class ProductAlt extends StatefulWidget {
  ProductAlt({super.key});

  @override
  State<ProductAlt> createState() => _ProductAltState();
}

class _ProductAltState extends State<ProductAlt> {
  bool isReadMore = false;
  Widget buildButton() => TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          // textStyle: TextStyle(fontSize: 20),
        ),
        onPressed: () => setState(() => isReadMore = !isReadMore),
        child: Text(isReadMore ? 'Read Less' : 'Read More'),
      );

  Widget buildText(String text) {
    final maxLines = isReadMore ? null : 2;
    final overFlow = isReadMore ? TextOverflow.visible : TextOverflow.ellipsis;
    return Text(
      text,
      maxLines: maxLines,
      overflow: overFlow,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: 'https://picsum.photos/600/600',
                errorWidget: (context, url, error) => new Icon(Icons.error),
                placeholder: (context, url) => Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              // visualDensity: VisualDensity(horizontal: -5),
              title: Text(
                'Testing',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
              ),
              subtitle: Text(
                'apa coba ini mari kita coba spontan uhuy steak huuu salmon waaa',
                maxLines: 4,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    overflow: TextOverflow.ellipsis),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Rp. 100.000',
                // 'Rp ' + product[0]['base_price'].toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Warna.secondaryGreen),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: Text('(bintang rating) 4.5 | 127 Terjual'),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Deskripsi',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: buildText(
                  'Saya sedang mencoba caranya bagaiman kita bisa bertemu and i miss her so much that im willing to go as far to where you are ogjwg wjof wfj noNFE NWO;bf eoufb EUFB EU BFWOUFBGW NWOEGNWUGWB UBQOBFQOFPKVJPv gjpwrjg nfin onw gwh owgjpf f nfipqenfiegh hp hgheighwipgskm nfniewofhowefj mpweifj peiwfj jpfijefepjf'),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: buildButton(),
            ),
          ],
        ),
      ),
    );
  }
}
