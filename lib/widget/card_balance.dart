import 'package:flutter/material.dart';
import 'package:uangku_app/theme.dart';

class CardBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff47C4F7),
            Color(0xff2E36A3),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15, left: 20),
            child: Text(
              "Available Balance",
              style: whiteTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1, left: 20),
            child: Text(
              "IDR 24,420,000",
              style: whiteTextStyle.copyWith(fontSize: 24),
            ),
          ),
          Divider(
            color: Colors.white,
            height: 25,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: edge),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/qrcode.png',
                      width: 60,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'QR Code',
                      style: whiteTextStyle.copyWith(fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/topup.png',
                      width: 60,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Top Up',
                      style: whiteTextStyle.copyWith(fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/send.png',
                      width: 60,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Send',
                      style: whiteTextStyle.copyWith(fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/receive.png',
                      width: 60,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Receive',
                      style: whiteTextStyle.copyWith(fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
