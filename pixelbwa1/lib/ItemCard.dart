import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelbwa1/Category.dart';
import 'package:pixelbwa1/theme.dart';

// ignore: must_be_immutable
class ItemCard extends StatelessWidget {

  String images;
  String title;
  int items;
  ItemCard({
    required this.images,
    required this.title,
    required this.items
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16)
        
      ),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Category(title: title, items: items,)));
        },
        child: Stack(
          children: [
            Image.asset(images, fit: BoxFit.cover,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: GoogleFonts.nunito(
                    color: whiteColor,
                    fontSize: 16
                  ),),
                  Text('$items items', style: GoogleFonts.nunito(
                    color: whiteColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w300
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}