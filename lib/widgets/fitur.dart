import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Fitur extends StatelessWidget {
  final VoidCallback? onClicked;
  final String? label;
  final SvgPicture? image;
  Fitur({this.label, this.image, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: InkWell(
        onTap: onClicked,
        child: Container(
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.2,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              height: 70,
              width: 70,
              padding: EdgeInsets.all(5),
              child: image,
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Text(
                '$label',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
              flex: 2,
            )
          ]),
        ),
      ),
    );
  }
}
