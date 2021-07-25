import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelbwa1/CategoryCard.dart';
import 'package:pixelbwa1/theme.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {

  String title;
  int items;
  Category({
    required this.title,
    required this.items
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: blackColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.nunito(
                      fontSize :24,
                      fontWeight: FontWeight.w600,
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text(
                    '$items items',
                    style: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: whiteColor
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:24),
              child: Column(
                children : [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CategoryCard(
                        imageUrl: 'assets/holiday_1.png',
                        title: 'Senatta Malla',
                        price: 800,
                      ),
                      CategoryCard(
                        imageUrl: 'assets/holiday_2.png',
                        title: 'Uncle Dunn',
                        price: 29000,
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CategoryCard(
                        imageUrl: 'assets/holiday_3.png',
                        title: 'Grey Manni',
                        price: 18309,
                      ),
                      CategoryCard(
                        imageUrl: 'assets/holiday_4.png',
                        title: 'Army Six',
                        price: 34000,
                      ),
                    ],
                  )
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}