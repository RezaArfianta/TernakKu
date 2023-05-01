import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ternakku/global/colors.dart';
import 'package:ternakku/module/about/informasi_umum_page.dart';
import 'package:ternakku/module/pemesanan/order_index.dart';
import 'package:ternakku/module/profile/controller/profile_controller.dart';
import 'package:ternakku/module/profile/view/pengaturan_profile.dart';
import 'package:ternakku/widgets/fitur.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  ProfileController c = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 50, bottom: 50, left: 30),
              color: Warna.secondaryGreen,
              child: ListTile(
                leading: CircleAvatar(
                  // radius: 120,
                  backgroundColor: Colors.red,
                  backgroundImage: NetworkImage(
                    'https://picsum.photos/400/400',
                  ),
                ),
                // Image(
                //   width: MediaQuery.of(context).size.width * 0.1,
                //   image: NetworkImage('https://picsum.photos/400/400'),
                // ),
                title: Text('dafddddddddddddddddta'),
                subtitle: Text('datadddddddddddddddddddddr'),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Warna.fadeGrey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text('Pesanan Saya'),
                      Spacer(),
                      Transform.scale(
                        scale: 0.9,
                        child: TextButton.icon(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OrderIndex(0)));
                            },
                            icon: Transform.scale(
                                scale: 0.8,
                                child: Icon(Icons.arrow_forward_ios_rounded)),
                            label: Text('Lihat Riwayat Pesanan')),
                      )
                    ],
                  ),
                  Divider(
                    color: Warna.fadeGrey,
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 110,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Fitur(
                          label: 'Dikemas',
                          onClicked: () {},
                        ),
                      ),
                      SizedBox(
                        height: 110,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Fitur(
                          label: 'Dikirim',
                          onClicked: () {},
                        ),
                      ),
                      SizedBox(
                        height: 110,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Fitur(
                          label: 'Selesai',
                          onClicked: () {},
                        ),
                      ),
                      SizedBox(
                        height: 110,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Fitur(
                          label: 'Beri Penilaian',
                          onClicked: () {},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text('Pengaturan Aplikasi')),
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Warna.fadeGrey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileSetting()));
                },
                child: ListTile(
                  title: Text('Pengaturan Profile'),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileSetting()));
                      },
                      icon: Icon(Icons.arrow_forward_ios_rounded)),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text('Informasi Umum')),
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(color: Warna.fadeGrey),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InformasiUmum(
                                    title: 'Informasi Umum',
                                    subtitle:
                                        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi illo, possimus animi commodi facilis fugit atque aliquid at facere natus deleniti tempore ratione illum esse culpa minus, rem voluptas nihil accusantium quisquam dolores fugiat. Expedita quis iste vitae possimus asperiores.',
                                  )));
                    },
                    child: ListTile(
                      title: Text('Pusat Bantuan'),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InformasiUmum(
                                    title: 'Syarat & Ketentuan',
                                    subtitle:
                                        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi illo, possimus animi commodi facilis fugit atque aliquid at facere natus deleniti tempore ratione illum esse culpa minus, rem voluptas nihil accusantium quisquam dolores fugiat. Expedita quis iste vitae possimus asperiores.',
                                  )));
                    },
                    child: ListTile(
                      title: Text('Syarat & Ketentuan'),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InformasiUmum(
                                    title: 'Kebijakan Privasi',
                                    subtitle:
                                        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi illo, possimus animi commodi facilis fugit atque aliquid at facere natus deleniti tempore ratione illum esse culpa minus, rem voluptas nihil accusantium quisquam dolores fugiat. Expedita quis iste vitae possimus asperiores.',
                                  )));
                    },
                    child: ListTile(
                      title: Text('Kebijakan Privasi'),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 30,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Warna.secondaryGreen,
                    ),
                    onPressed: () {
                      c.ClearCookies();
                    },
                    child: Text(
                      'Log Out',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
              ),
            ),
            // Row(children: [
            //   SizedBox(
            //     width: 1,
            //   ),
            //   Spacer(),
            //   InkWell(
            //     child: Container(
            //       width: 250,
            //       height: 50,
            //       decoration: BoxDecoration(
            //         boxShadow: [
            //           BoxShadow(
            //               color: Colors.grey,
            //               // spreadRadius: 1,
            //               blurRadius: 1)
            //         ],
            //         color: Warna.secondaryGreen,
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //       alignment: Alignment.center,
            //       child: Text(
            //         'Log Out',
            //         style: TextStyle(
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
            //   ),
            //   Spacer(),
            //   SizedBox(
            //     width: 1,
            //   ),
            // ]),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
