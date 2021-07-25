
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Details.dart';

// ignore: must_be_immutable
class CategoryCard extends StatefulWidget {

  String imageUrl;
  String title;
  int price;

  CategoryCard({
    required this.imageUrl,
    required this.title,
    required this.price
  });

  @override
  _CategoryCardState createState() => _CategoryCardState(imageUrl: imageUrl, title: title, price: price);
}

class _CategoryCardState extends State<CategoryCard> {

  String imageUrl;
  String title;
  int price;

  _CategoryCardState({
    required this.imageUrl,
    required this.title,
    required this.price
  });

  bool isAdded = false;
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Details(image: imageUrl)));
      },
      child: Container(
        height: 244,
        width: 155,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Stack(
               children: [
                 Hero(
                   tag: 'gas',
                   child: Image.asset(imageUrl),
                  ),
                 Column(
                   children: [
                     SizedBox(height: 146,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              isAdded = !isAdded;
                            });
                          },
                          child: isAdded ? Image.asset('assets/btn_added.png', width: 28,) : Image.asset('assets/btn_add.png', width: 28,)
                          ),
                        SizedBox(width: 10,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              isLiked = !isLiked;
                            });
                          },
                          child: isLiked ? Image.asset('assets/btn_liked.png', width: 28,) : Image.asset('assets/btn_like.png', width: 28,)
                        )
                      ],
                    )
                   ],
                 ),
               ],
             ),
             SizedBox(height: 12,),
             Text(
              title,
              style: GoogleFonts.nunito().copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(height: 4,),
            Text(
              '\$ $price',
              style: GoogleFonts.nunito().copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w300
              ),
            )
           ],
         )
      ),
    );
  }
}