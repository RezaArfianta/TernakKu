import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ternakku/module/category/category_page.dart';
// import 'package:ternakku/module/category/tabs/makanan_tab.dart';
// import 'package:ternakku/module/category/tabs/obat_tab.dart';

import '../../global/colors.dart';
import 'controller/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  HomeController c = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Container(),
          title: TextField(
            controller: TextEditingController(),
            decoration: InputDecoration(suffixIcon: Icon(Icons.search)),
          )),
      body: Container(
          padding: EdgeInsets.only(right: 10, left: 10),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              // Container(
              //   padding: EdgeInsets.all(8),
              //   height: 250,
              //   child: Swiper(
              //     // itemHeight: 200,
              //     // itemWidth: 100,
              //     loop: true,
              //     autoplay: true,
              //     viewportFraction: (isTablet ||
              //             MediaQuery.of(context).orientation ==
              //                 Orientation.landscape)
              //         ? 0.5
              //         : 0.55,
              //     scale: 0.8,
              //     layout: SwiperLayout.DEFAULT,
              //     itemCount: 3,
              //     itemBuilder: (context, index) {
              //       return Container(
              //         color: Warna.primaryGreen,
              //       );
              //     },
              //   ),
              // ),
              SizedBox(
                height: 150,
                width: 430,
                child: Container(
                  height: 150,
                  width: 430,
                  // padding: EdgeInsets.all(16),
                  // color: Warna.primaryGreen,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Warna.secondaryGreen),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'Category',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoryPage(0)));
                      },
                      child: Text(
                        'See All >',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      style: TextButton.styleFrom(primary: Colors.black),
                    )
                  ],
                ),
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 310,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image(
                          width: MediaQuery.of(context).size.width * 0.4,
                          image: NetworkImage('https://picsum.photos/200/300'),
                        ),
                        Text(c.categoryTitle[index])
                      ],
                    ),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  );
                },
              ),
            ],
          )),
    );
  }
}
