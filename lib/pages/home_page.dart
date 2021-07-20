import 'package:flutter/material.dart';
import 'package:flutter_foodapps/pages/detail_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0, left: 30, right: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tasya Agnes',
                        style: GoogleFonts.poppins(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        'Food Blogger',
                        style: GoogleFonts.poppins(
                          color: Color(0xffB0B0B0),
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 126),
                  Image.asset(
                    'assets/profile_pic.png',
                    width: 60,
                    height: 60,
                  ),
                ],
              ),
              SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Color(0xffFFFFFF),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Search restaurant...',
                  hintStyle: GoogleFonts.poppins(
                    color: Color(0xffB0B0B0),
                    fontSize: 14,
                  ),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Categories',
                    style: GoogleFonts.poppins(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 110,
                          height: 127,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 30.0,
                              left: 20,
                              right: 20,
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/popular_icon.png',
                                  width: 38,
                                ),
                                SizedBox(height: 19),
                                Text(
                                  'Populer',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 24),
                        Container(
                          width: 110,
                          height: 127,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 30.0,
                              left: 20,
                              right: 20,
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/rottie_icon.png',
                                  width: 38,
                                ),
                                SizedBox(height: 19),
                                Text(
                                  'Rottie',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 24),
                        Container(
                          width: 110,
                          height: 127,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 30.0,
                              left: 20,
                              right: 20,
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/steak_icon.png',
                                  width: 38,
                                ),
                                SizedBox(height: 19),
                                Text(
                                  'Steaks',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nearby Restaurant',
                        style: GoogleFonts.poppins(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 16),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPage()),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 400,
                            height: 83,
                            color: Color(0xffFFFFFF),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/nearby_one.png',
                                ),
                                SizedBox(width: 16),
                                Padding(
                                  padding: const EdgeInsets.only(top: 17.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Rumah Nenek',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text.rich(
                                        TextSpan(
                                          text: '\$\$\$',
                                          children: [
                                            TextSpan(
                                              text: '\$\$',
                                              style: GoogleFonts.poppins(
                                                color: Color(0xffB0B0B0),
                                                fontSize: 14,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 70),
                                Text(
                                  '1,4 mil',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xffB0B0B0),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 400,
                          height: 83,
                          color: Color(0xffFFFFFF),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/nearby_two.png',
                              ),
                              SizedBox(width: 16),
                              Padding(
                                padding: const EdgeInsets.only(top: 17.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Black Polar',
                                      style: GoogleFonts.poppins(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text('\$\$\$\$\$')
                                  ],
                                ),
                              ),
                              SizedBox(width: 90),
                              Text(
                                '1,4 mil',
                                style: GoogleFonts.poppins(
                                  color: Color(0xffB0B0B0),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 400,
                          height: 83,
                          color: Color(0xffFFFFFF),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/nearby_three.png',
                              ),
                              SizedBox(width: 16),
                              Padding(
                                padding: const EdgeInsets.only(top: 17.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Office Club',
                                      style: GoogleFonts.poppins(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text.rich(
                                      TextSpan(
                                        text: '\$',
                                        children: [
                                          TextSpan(
                                            text: '\$\$\$\$',
                                            style: GoogleFonts.poppins(
                                              color: Color(0xffB0B0B0),
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 90),
                              Text(
                                '1,4 mil',
                                style: GoogleFonts.poppins(
                                  color: Color(0xffB0B0B0),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 400,
                          height: 83,
                          color: Color(0xffFFFFFF),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/nearby_four.png',
                              ),
                              SizedBox(width: 16),
                              Padding(
                                padding: const EdgeInsets.only(top: 17.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Biker Rooms',
                                      style: GoogleFonts.poppins(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text.rich(
                                      TextSpan(
                                        text: '\$\$\$',
                                        children: [
                                          TextSpan(
                                            text: '\$\$',
                                            style: GoogleFonts.poppins(
                                              color: Color(0xffB0B0B0),
                                              fontSize: 14,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 80),
                              Text(
                                '1,4 mil',
                                style: GoogleFonts.poppins(
                                  color: Color(0xffB0B0B0),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
