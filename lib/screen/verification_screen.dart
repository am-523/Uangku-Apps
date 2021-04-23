import 'package:flutter/material.dart';
import 'package:uangku_app/screen/personal_screen.dart';
import 'package:uangku_app/theme.dart';
import 'package:flutter_verification_box/verification_box.dart';

class VerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        leading: Icon(
          Icons.arrow_back,
          color: blackColor,
        ),
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/image2.png',
                  width: 200,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Verification',
                  style: regularTextStyle.copyWith(fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Verify the handphone number by\nentering the verification code',
                  style: regularsoftTextStyle.copyWith(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Container(
                    height: 50,
                    child: VerificationBox(
                      focusBorderColor: Colors.lightBlue,
                      borderWidth: 2,
                      borderRadius: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Didn’t recive verification code?',
                  style: regularsoftTextStyle.copyWith(fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 8,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PersonalScreen()));
                  },
                  child: Text(
                    'Resend Code',
                    style: blueTextStyle.copyWith(fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
