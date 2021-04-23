import 'package:flutter/material.dart';
import 'package:uangku_app/screen/pin_screen.dart';
import 'package:uangku_app/theme.dart';

class PersonalScreen extends StatefulWidget {
  @override
  _PersonalScreenState createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        bottom: false,
        child: Stack(
          children: [
            ListView(
              children: [
                Center(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/image3.png',
                        width: 200,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Personal Information',
                        style: regularTextStyle.copyWith(fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Personal information is used for\nregistration and validation Uangku',
                        style: regularsoftTextStyle.copyWith(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Full Name', hintText: "Hibu Sema"),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Address',
                              hintText: "Ciambar-Sukabumi"),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Date of Birth',
                              hintText: "21 / 04 / 2000",
                              suffixIcon: Icon(Icons.calendar_today)),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Gender',
                            hintText: "Female",
                            suffixIcon: Icon(Icons.keyboard_arrow_down),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: 335,
                        height: 60,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PinScreen()));
                          },
                          color: blueColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            'Continue',
                            style: regularwhiteTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
