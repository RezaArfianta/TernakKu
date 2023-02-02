import 'package:flutter/material.dart';
import 'package:ternakku/module/category/index_seeall_page.dart';
import 'package:ternakku/module/category/see_all_page.dart';

import '../../global/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage> {
  var isTablet = false;

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
                                builder: (context) => SeeAllIndex()));
                      },
                      child: Text(
                        'See All >',
                        style: TextStyle(fontSize: 15),
                      ),
                      style: TextButton.styleFrom(primary: Colors.black),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  InkWell(
                    child: Container(
                      width: 235,
                      height: 250,
                      // color: Colors.green,
                    ),
                  ),
                  Spacer(
                    flex: 3,
                  ),
                  InkWell(
                    child: Container(
                      width: 235,
                      height: 250,
                      // color: Colors.green,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 5,
                        child: Container(
                          width: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image(
                              image: NetworkImage(''),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  InkWell(
                    child: Container(
                      width: 235,
                      height: 250,
                      // color: Colors.green,
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  InkWell(
                    child: Container(
                      width: 235,
                      height: 250,
                      // color: Colors.green,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
            ],
          )),
    );
  }
}
