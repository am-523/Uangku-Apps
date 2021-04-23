import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String imgurl;
  CardItem({this.imgurl});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        '$imgurl',
      ),
    );
  }
}
