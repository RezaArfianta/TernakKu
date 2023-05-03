import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ternakku/api_url.dart';
import 'package:ternakku/global/colors.dart';

class RumputTab extends StatefulWidget {
  const RumputTab({super.key});

  @override
  State<RumputTab> createState() => _RumputTabState();
}

class _RumputTabState extends State<RumputTab> {
  dynamic rumputProducts = [];
  @override
  void initState() {
    // TODO: implement initState
    getAllData();
    super.initState();
  }

  void getAllData() async {
    var response = await Dio()
        .post(ApirUrl.ApiUrl + '/api/products', data: {'where': 'Rumput'});
    print(response.data);
    if (response.data['data'].length >= 1) {
      setState(() {
        rumputProducts = response.data['data'];
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 310,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: rumputProducts.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(blurRadius: 3)],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      width: MediaQuery.of(context).size.width * 0.3,
                      image: NetworkImage(ApirUrl.ApiImg +
                          rumputProducts[index]['product_img']),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      rumputProducts.length >= 1
                          ? rumputProducts[index]['product_name']
                          : 'index',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      rumputProducts.length >= 1
                          ? 'Rp. ' + rumputProducts[index]['final_price']
                          : 'Rp. ' + 'index',
                      style: TextStyle(fontSize: 20, color: Warna.primaryGreen),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
