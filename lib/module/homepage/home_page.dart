// import 'package:flutter/material.dart';

// import '../../global/colors.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   var isTablet = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             backgroundColor: Colors.white,
//             leading: Container(),
//             title: TextField(
//               controller: TextEditingController(),
//               decoration: InputDecoration(suffixIcon: Icon(Icons.search)),
//             )),
//         body: CustomScrollView(
//           slivers: [
//             SliverToBoxAdapter(
//               child: Padding(
//                 padding: EdgeInsets.all(10),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Warna.secondaryGreen),
//                 ),
//               ),
//             )
//           ],
//         ));
//   }
// }
