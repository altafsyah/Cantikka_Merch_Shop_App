import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelbwa1/theme.dart';

import 'ItemCard.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      'Reward Your\nBeauty',
                      style: GoogleFonts.nunito(
                        color: hTextColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset('assets/ic_shop.png', width: 24,),
                      SizedBox(width: 20,),
                      Image.asset('assets/ic_cart.png', width: 24,)
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  InkWell(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        color: blackColor,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      width: 90,
                      height: 30,
                      child: Center(
                        child: Text(
                          'Men',
                          style: GoogleFonts.nunito(
                            color: whiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      width: 90,
                      height: 30,
                      child: Center(
                        child: Text(
                          'Women',
                          style: GoogleFonts.nunito(
                            color: greyColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16,),InkWell(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      width: 90,
                      height: 30,
                      child: Center(
                        child: Text(
                          'Kids',
                          style: GoogleFonts.nunito(
                            color: greyColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16,),
                ],
              ),
              SizedBox(height: 40,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItemCard(
                        images: 'assets/bg_item1.png',
                        title: 'Holiday Yes',
                        items: 883,
                      ),
                      SizedBox(width: 17,),
                      ItemCard(
                        images: 'assets/bg_item2.png',
                        title: 'Party Ready',
                        items: 441,
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItemCard(
                        images: 'assets/bg_item3.png',
                        title: 'New Worker',
                        items: 40328,
                      ),
                      SizedBox(width: 17,),
                      ItemCard(
                        images: 'assets/bg_item4.png',
                        title: 'Daily Casual',
                        items: 18393,
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItemCard(
                        images: 'assets/bg_item5.png',
                        title: 'Confident',
                        items: 200,
                      ),
                      ItemCard(
                        images: 'assets/bg_item6.png',
                        title: 'Picnic Fever',
                        items: 663,
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}