import 'package:flutter/material.dart';
import 'package:uangku_app/theme.dart';
import 'package:uangku_app/widget/card_balance.dart';
import 'package:uangku_app/screen/card_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: edge),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CardScreen(),
                      ),
                      (route) => false);
                },
                child: IconButton(
                  icon: Icon(
                    Icons.dashboard,
                    size: 30,
                    color: Color(0xff2E36A3),
                  ),
                  onPressed: () {},
                ),
              ),
              Spacer(),
              IconButton(
                  icon: Icon(
                    Icons.bar_chart,
                    size: 30,
                    color: Color(0xff2E36A3),
                  ),
                  onPressed: () {}),
              Spacer(),
              Spacer(),
              IconButton(
                  icon: Icon(
                    Icons.credit_card,
                    size: 30,
                    color: Color(0xff2E36A3),
                  ),
                  onPressed: () {}),
              Spacer(),
              IconButton(
                  icon: Icon(
                    Icons.account_circle,
                    size: 30,
                    color: Color(0xff2E36A3),
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add_circle_outline,
        ),
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => CardScreen(),
              ),
              (route) => false);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        bottom: false,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg2.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              ListView(
                children: [
                  SizedBox(
                    height: 250,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "My Cards",
                                style: regularTextStyle.copyWith(fontSize: 16),
                              ),
                              Icon(Icons.chevron_right),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                                height: 178,
                                width: MediaQuery.of(context).size.width,
                                color: whiteColor,
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: Image.asset(
                                        'assets/card.png',
                                        width: 60,
                                      ),
                                      title: Text(
                                        'Virtual Card',
                                        style: regularTextStyle,
                                      ),
                                      subtitle: Text(
                                        '****  5678',
                                        style: regularTextStyle,
                                      ),
                                      trailing: Text('24,000,000',
                                          style: regularTextStyle.copyWith(
                                              fontSize: 16)),
                                    ),
                                    Divider(
                                      color: Color(0xffEEF2F8),
                                      height: 25,
                                      thickness: 1,
                                      indent: 20,
                                      endIndent: 20,
                                    ),
                                    ListTile(
                                      leading: Image.asset(
                                        'assets/card.png',
                                        width: 60,
                                      ),
                                      title: Text(
                                        'Basic Card',
                                        style: regularTextStyle,
                                      ),
                                      subtitle: Text(
                                        '****  5678',
                                        style: regularTextStyle,
                                      ),
                                      trailing: Text('4,020,000',
                                          style: regularTextStyle.copyWith(
                                              fontSize: 16)),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Transaction",
                                style: regularTextStyle.copyWith(fontSize: 16),
                              ),
                              Icon(Icons.chevron_right),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              height: 178,
                              width: MediaQuery.of(context).size.width,
                              color: whiteColor,
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Pay Laundry',
                                      style: regularTextStyle,
                                    ),
                                    subtitle: Text(
                                      '20 Apr 2021',
                                      style: regularTextStyle,
                                    ),
                                    trailing: Text(
                                      '- Rp. 50.000',
                                      style: regularTextStyle.copyWith(
                                          fontSize: 16, color: Colors.red),
                                    ),
                                  ),
                                  Divider(
                                    color: Color(0xffEEF2F8),
                                    height: 25,
                                    thickness: 1,
                                    indent: 20,
                                    endIndent: 20,
                                  ),
                                  ListTile(
                                    title: Text(
                                      'Payment Job',
                                      style: regularTextStyle,
                                    ),
                                    subtitle: Text(
                                      '10 Mar 2021',
                                      style: regularTextStyle,
                                    ),
                                    trailing: Text(
                                      '+ Rp. 1.050.000',
                                      style: regularTextStyle.copyWith(
                                          fontSize: 16, color: Colors.green),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 90,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: edge,
                  vertical: 4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/logoku.png',
                      width: 120,
                    ),
                    Spacer(),
                    Icon(
                      Icons.notifications_outlined,
                      color: whiteColor,
                      size: 29,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Container(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1547656807-9733c2b738c2?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
                        ),
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          border: new Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge, vertical: 70),
                child: CardBalance(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
