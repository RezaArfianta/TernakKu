import 'package:flutter/material.dart';
import 'package:ternakku/about/informasi_umum_page.dart';
import 'package:ternakku/global/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
              padding: EdgeInsets.all(30),
              color: Warna.primaryGreen,
              child: ListTile(
                leading: Image(
                  width: MediaQuery.of(context).size.width * 0.1,
                  image: NetworkImage('https://picsum.photos/400/400'),
                ),
                title: Text('dafddddddddddddddddta'),
                subtitle: Text('datadddddddddddddddddddddr'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Warna.fadeGrey),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Pesanan Saya'),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_rounded),
                          label: Text('Lihat Riwayat Pesnana'))
                    ],
                  ),
                  Divider(),
                  Row()
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
                borderRadius: BorderRadius.circular(20),
              ),
              child: GestureDetector(
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
                  title: Text('Pengaturan Profile'),
                  trailing: IconButton(
                      onPressed: () {},
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
                  borderRadius: BorderRadius.circular(20)),
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
            )
          ],
        ),
      ),
    );
  }
}
