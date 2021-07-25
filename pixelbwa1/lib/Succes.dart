import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelbwa1/HomeScreen.dart';
import 'package:pixelbwa1/theme.dart';

class Succes extends StatelessWidget {
  const Succes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/success.png', height: 150,),
              SizedBox(height: 50,),
              Text(
                'What a Weather!',
                style: GoogleFonts.nunito().copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: whiteColor
                )
              ),
              SizedBox(height: 6,),
              Text(
                'Our team is currently\nworking on your special orders',
                style: GoogleFonts.nunito().copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: whiteColor
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Container(
                  width: 206,
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
                        'Shop More',
                        style: GoogleFonts.nunito().copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: whiteColor
                        )
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

