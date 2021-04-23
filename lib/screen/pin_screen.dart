import 'package:flutter/material.dart';
import 'package:uangku_app/screen/home_screen.dart';
import 'package:uangku_app/theme.dart';
import 'package:flutter_verification_box/verification_box.dart';

class PinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff45B8F0),
              Color(0xff2E36A3),
            ],
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset(
                    'assets/img_logo.png',
                    width: 120,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Enter your PIN',
                    style: whiteTextStyle.copyWith(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: edge),
                    child: Container(
                      height: 50,
                      child: VerificationBox(
                        borderColor: whiteColor,
                        focusBorderColor: Colors.white,
                        borderWidth: 2,
                        borderRadius: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: Text(
                      'Forgot you PIN?',
                      style: whiteTextStyle.copyWith(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
