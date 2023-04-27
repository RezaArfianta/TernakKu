import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supercharged/supercharged.dart';
import 'package:ternakku/module/category/category_page.dart';
import '../../../api_url.dart';
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
          leading: Image.asset(
            'assets/images/logo.png',
            width: MediaQuery.of(context).size.width * 0.1,
          ),
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
              Image.asset(
                'assets/images/banner.png',
                width: 430,
                height: 150,
              ),
              // SizedBox(
              //   height: 150,
              //   width: 430,
              //   child: Container(
              //     height: 150,
              //     width: 430,
              //     // padding: EdgeInsets.all(16),
              //     // color: Warna.primaryGreen,
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(10),
              //         color: Warna.secondaryGreen),
              //   ),
              // ),
              SizedBox(
                height: 20,
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
              SizedBox(
                height: 20,
              ),

              Obx(
                () => GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 310,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: c.categoryTitle.count(),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.black, // Set border color
                            width: 3.0), // Set border width
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Column(
                        children: [
                          Image(
                            height: 250,
                            width: MediaQuery.of(context).size.width * 0.35,
                            image: NetworkImage(ApirUrl.ApiImg +
                                c.categoryTitle[index]['category_image']),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(c.categoryTitle.length >= 1
                              ? c.categoryTitle[index]['category_name']
                              : 'index'),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}
