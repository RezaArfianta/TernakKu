import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ternakku/api_url.dart';
import 'package:ternakku/global/colors.dart';

class DagingTab extends StatefulWidget {
  const DagingTab({super.key});

  @override
  State<DagingTab> createState() => _DagingTabState();
}

class _DagingTabState extends State<DagingTab> {
  dynamic dagingProducts = [];
  @override
  void initState() {
    // TODO: implement initState
    getAllData();
    super.initState();
  }

  void getAllData() async {
    var response = await Dio()
        .post(ApirUrl.ApiUrl + '/api/products', data: {'where': 'Daging'});
    print(response.data);
    if (response.data['data'].length >= 1) {
      setState(() {
        dagingProducts = response.data['data'];
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
            itemCount: dagingProducts.length,
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
                          dagingProducts[index]['product_img']),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      dagingProducts.length >= 1
                          ? dagingProducts[index]['product_name']
                          : 'index',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      dagingProducts.length >= 1
                          ? 'Rp. ' + dagingProducts[index]['final_price']
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
