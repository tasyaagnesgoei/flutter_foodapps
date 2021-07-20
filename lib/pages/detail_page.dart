import 'package:flutter/material.dart';
import 'package:flutter_foodapps/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/cover.png',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 24, right: 24),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Last Cake',
                      style: titleTextStyle,
                    ),
                    Text(
                      'Jakarta, Indonesia',
                      style: lightTextStyle,
                    )
                  ],
                ),
                SizedBox(width: 97),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icon_star.png',
                          width: 20,
                        ),
                        SizedBox(width: 3),
                        Image.asset(
                          'assets/icon_star.png',
                          width: 20,
                        ),
                        SizedBox(width: 3),
                        Image.asset(
                          'assets/icon_star.png',
                          width: 20,
                        ),
                        SizedBox(width: 3),
                        Image.asset(
                          'assets/icon_star.png',
                          width: 20,
                        ),
                        SizedBox(width: 3),
                        Image.asset(
                          'assets/grey_star.png',
                          width: 20,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '12,409',
                          style: GoogleFonts.poppins(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          'reviews',
                          style: GoogleFonts.poppins(
                            color: Color(0xffB0B0B0),
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 24.0),
            child: Text(
              'This Summer',
              style: boldTextStyle,
            ),
          ),
        ],
      );
    }

    Widget option(
      int index,
      String imageUrl,
      String text,
      String pricing,
    ) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                imageUrl,
                width: 55,
              ),
              SizedBox(width: 14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: boldTextStyle,
                  ),
                  Text(
                    pricing,
                    style: lightTextStyle,
                  )
                ],
              ),
              SizedBox(width: 140),
              selectedIndex == index
                  ? Image.asset('assets/check.png', width: 24)
                  : Image.asset(
                      'assets/uncheck.png',
                      width: 24,
                    )
            ],
          ),
        ),
      );
    }

    Widget checkoutButton() {
      return Container(
        width: 327,
        height: 50,
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Color(0xffFFC700),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(58),
              )),
          onPressed: () {},
          child: Text(
            'Continue to Checkout',
            style: boldTextStyle,
          ),
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          header(),
          option(0, 'assets/cake_one.png', 'Vegan X World', '\$12,000'),
          option(1, 'assets/cake_two.png', 'Kiwii Kawaii', '\$40,000'),
          option(2, 'assets/cake_three.png', 'Grape Passion', '\$65,000'),
          SizedBox(height: 40),
          selectedIndex == -1 ? SizedBox() : checkoutButton(),
        ],
      ),
    );
  }
}
