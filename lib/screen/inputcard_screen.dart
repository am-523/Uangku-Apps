import 'package:credit_card_input_form/constants/constanst.dart';
import 'package:flutter/material.dart';

import 'package:credit_card_input_form/credit_card_input_form.dart';

class InputCardScreen extends StatefulWidget {
  @override
  _InputCardScreenState createState() => _InputCardScreenState();
}

class _InputCardScreenState extends State<InputCardScreen> {
  final Map<String, String> customCaptions = {
    'PREV': 'Prev',
    'NEXT': 'Next',
    'DONE': 'Done',
    'CARD_NUMBER': 'Card Number',
    'CARDHOLDER_NAME': 'Cardholder Name',
    'VALID_THRU': 'Valid Thru',
    'SECURITY_CODE_CVC': 'Security Code (CVC)',
    'NAME_SURNAME': 'Name Surname',
    'MM_YY': 'MM/YY',
    'UBAH': 'Ubah',
  };

  final buttonStyle = BoxDecoration(
    borderRadius: BorderRadius.circular(30.0),
    gradient: LinearGradient(
        colors: [
          const Color(0xfffcdf8a),
          const Color(0xfff38381),
        ],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(1.0, 0.0),
        stops: [0.0, 1.0],
        tileMode: TileMode.clamp),
  );

  final cardDecoration = BoxDecoration(
      boxShadow: <BoxShadow>[
        BoxShadow(color: Colors.black54, blurRadius: 15.0, offset: Offset(0, 8))
      ],
      gradient: LinearGradient(
          colors: [
            Color(0xff000046),
            Color(0xff1CB5E0),
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp),
      borderRadius: BorderRadius.all(Radius.circular(15)));

  final buttonTextStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        title: Text('Add Card'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  CreditCardInputForm(
                    showResetButton: true,
                    onStateChange: (currentState, cardInfo) {
                      print(currentState);
                      print(cardInfo);
                    },
                    initialAutoFocus: false,
                    customCaptions: customCaptions,
                    cardCVV: '222',
                    cardName: 'Asril Mochammad',
                    cardNumber: '1223455671127889',
                    cardValid: '12/12',
                    intialCardState: InputState.DONE,
                    frontCardDecoration: cardDecoration,
                    backCardDecoration: cardDecoration,
                    prevButtonTextStyle: buttonTextStyle,
                    nextButtonTextStyle: buttonTextStyle,
                    resetButtonTextStyle: buttonTextStyle,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
