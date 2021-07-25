import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelbwa1/Succes.dart';
import 'package:pixelbwa1/theme.dart';

// ignore: must_be_immutable
class Details extends StatefulWidget {

  String image;

  Details({required this.image});

  @override
  _DetailsState createState() => _DetailsState(image: image);
}

class _DetailsState extends State<Details> {

  String image;
  
  _DetailsState({required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
         child: Stack(
           children: [
             Container(
               height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width,
               child: Hero(tag: 'gas',child: Image.asset('assets/details_1.png', fit: BoxFit.cover,)),
             ),
             ListView(
               children:[
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height - 293,),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        'Senatta Malla',
                        style: GoogleFonts.nunito().copyWith(
                          fontSize: 36,
                          fontWeight:FontWeight.w600 ,
                          color: whiteColor
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        '\$800',
                        style: GoogleFonts.nunito().copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: whiteColor
                        )
                      ),
                    ),
                    SizedBox(height: 24,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                        color: whiteColor
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: [
                            SizedBox(height: 28,),
                            Row(
                              children: [
                                InkWell(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(width: 1, color: blackColor)
                                    ),
                                    width: 45,
                                    height: 45,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'S',
                                        style: GoogleFonts.nunito().copyWith(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w300
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 16,),
                                InkWell(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(width: 1, color: blackColor),
                                      color: Color(0xffFFE8D8)
                                    ),
                                    width: 45,
                                    height: 45,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'M',
                                        style: GoogleFonts.nunito().copyWith(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xffF56703)
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 16,),
                                InkWell(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(width: 1, color: blackColor)
                                    ),
                                    width: 45,
                                    height: 45,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'L',
                                        style: GoogleFonts.nunito().copyWith(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w300
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 16,),
                                InkWell(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(width: 1, color: blackColor)
                                    ),
                                    width: 45,
                                    height: 45,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'X',
                                        style: GoogleFonts.nunito().copyWith(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w300
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 28,),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Succes()));
                              },
                              child: Container(
                                width: 327,
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  color: Color(0xffF56703)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/cart.png', width: 22,),
                                    SizedBox(width: 6,),
                                    Text(
                                      'Add to Cart',
                                      style: GoogleFonts.nunito().copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: whiteColor
                                      )
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
               ]  
             ),
           ],
         ),
       ),
    );
  }
}