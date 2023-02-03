import 'package:flutter/material.dart';
import 'package:ternakku/module/category/category_page.dart';
// import 'package:ternakku/module/category/tabs/makanan_tab.dart';
// import 'package:ternakku/module/category/tabs/obat_tab.dart';

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
              Expanded(
                child: Row(
                  children: [
                    InkWell(
                      child: Container(
                        width: 235,
                        height: 250,
                        // color: Colors.green,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 5,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 4,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      top: 18, right: 6, left: 5),
                                  width: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image(
                                      image: NetworkImage(
                                          'https://picsum.photos/200/300'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Alat',
                                      style: TextStyle(fontSize: 16),
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ))
                            ],
                          ),
                        ),
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
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 4,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      top: 18, right: 5, left: 5),
                                  width: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image(
                                      image: NetworkImage(
                                          'https://picsum.photos/200/300'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Obat',
                                      style: TextStyle(fontSize: 16),
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Row(
                  children: [
                    InkWell(
                      child: Container(
                        width: 235,
                        height: 250,
                        // color: Colors.green,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 5,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 4,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      top: 18, right: 6, left: 5),
                                  width: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image(
                                      image: NetworkImage(
                                          'https://picsum.photos/200/300'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Makanan',
                                      style: TextStyle(fontSize: 16),
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoryPage(3)));
                      },
                    ),
                    Spacer(
                      flex: 2,
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
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 4,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      top: 18, right: 6, left: 5),
                                  width: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image(
                                      image: NetworkImage(
                                          'https://picsum.photos/200/300'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Makanan',
                                      style: TextStyle(fontSize: 16),
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          )),
    );
  }
}
