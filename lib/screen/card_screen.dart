import 'package:flutter/material.dart';
import 'package:uangku_app/theme.dart';
import 'package:uangku_app/widget/card_item.dart';
import 'package:flip_card/flip_card.dart';
import 'package:uangku_app/screen/inputcard_screen.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: blackColor,
          ),
        ),
        title: Text(
          'My Card',
          style: regularTextStyle,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.view_list,
              color: blackColor,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Container(
                    height: 185,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        FlipCard(
                          direction: FlipDirection.HORIZONTAL, // default
                          front: Container(
                            child: CardItem(
                              imgurl: 'assets/card1.png',
                            ),
                          ),
                          back: Container(
                            child: CardItem(
                              imgurl: 'assets/back1.png',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        FlipCard(
                          direction: FlipDirection.HORIZONTAL, // default
                          front: Container(
                            child: CardItem(
                              imgurl: 'assets/card2.png',
                            ),
                          ),
                          back: Container(
                            child: CardItem(
                              imgurl: 'assets/back2.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Text(
                    'Card Details',
                    style: regularTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Text(
                    'Active Balance',
                    style: regularTextStyle.copyWith(
                        fontSize: 16, color: Color(0xff717E95)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Text(
                    'IDR 24,420,000',
                    style: regularTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Color(0xffD0D3D8),
                  height: 25,
                  thickness: 1,
                  indent: 22,
                  endIndent: 22,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Text(
                    'Withdrawn Limit',
                    style: regularTextStyle.copyWith(
                        fontSize: 16, color: Color(0xff717E95)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Text(
                    'IDR 10,000,000',
                    style: regularTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                Divider(
                  color: Color(0xffD0D3D8),
                  height: 25,
                  thickness: 1,
                  indent: 22,
                  endIndent: 22,
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/pin.png',
                    width: 60,
                  ),
                  title: Text(
                    'Change PIN',
                    style: regularTextStyle,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InputCardScreen()));
                  },
                  child: ListTile(
                    leading: Image.asset(
                      'assets/add.png',
                      width: 60,
                    ),
                    title: Text(
                      'Add Card',
                      style: regularTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
