import 'package:flutter/material.dart';
import 'widgets/fitur.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final listFitur = [
    Fitur(
      label: 'mahira',
      onClicked: () {},
    ),
    Fitur(
      label: 'mahira',
      onClicked: () {},
    ),
    Fitur(
      label: 'mahira',
      onClicked: () {},
    ),
    Fitur(
      label: 'mahira',
      onClicked: () {},
    ),
    Fitur(
      label: 'mahira',
      onClicked: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 180,
          ),
          Card(
            elevation: 5,
            child: Row(
              children: [
                Fitur(
                  label: 'lol',
                  onClicked: () {},
                ),
                Fitur(
                  label: 'hello',
                  onClicked: () {},
                ),
                Fitur(
                  label: 'hi',
                  onClicked: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
    //     body: CustomScrollView(
    //   slivers: [
    //     SliverToBoxAdapter(
    //       child: Padding(
    //         padding: EdgeInsets.only(left: 20, top: 5, bottom: 10),
    //         child: Container(
    //           child: Align(
    //               alignment: Alignment.centerLeft,
    //               child: Text('Fitur',
    //                   style: TextStyle(
    //                       fontSize: 18, fontWeight: FontWeight.bold))),
    //         ),
    //       ),
    //     ),
    //     SliverToBoxAdapter(
    //       child: Padding(
    //           padding: EdgeInsets.only(bottom: 10),
    //           child: SizedBox(
    //             height: 90,
    //             width: 120,
    //             child: GridView.builder(
    //               scrollDirection: Axis.horizontal,
    //               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //                   crossAxisCount: 1, mainAxisSpacing: 0),
    //               itemCount: listFitur.length,
    //               itemBuilder: (context, index) {
    //                 return listFitur[index];
    //               },
    //             ),
    //           )),
    //     ),
    //     SliverToBoxAdapter(
    //       child: Padding(
    //         padding: EdgeInsets.only(left: 20, top: 5, bottom: 10),
    //         child: SizedBox(
    //           height: 90,
    //           width: 100,
    //           child: Card(
    //             shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(8)),
    //             elevation: 7,
    //             child: Row(
    //               children: [
    //                 Fitur(
    //                   label: 'hello',
    //                   onClicked: () {},
    //                 ),
    //                 Fitur(
    //                   label: 'hi',
    //                   onClicked: () {},
    //                 ),
    //                 Fitur(
    //                   label: 'hello',
    //                   onClicked: () {},
    //                 ),
    //                 Fitur(
    //                   label: 'hi',
    //                   onClicked: () {},
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     )
    //   ],
    // ));
  }
}
