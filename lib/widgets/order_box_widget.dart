import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shreeji_delivery_app/theme/colors.dart';

class OrderBox extends StatelessWidget {
  const OrderBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10,left: 10,right: 10),
        padding: const EdgeInsets.only(top: 8,bottom: 14,left: 8,right: 8),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xfffffefd),
              spreadRadius: 10,
              blurRadius: 2
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 14),
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(4)
              ),
              padding: const EdgeInsets.all(6),
              child: const Text('TES00004092023115'),
            ),
            Row(
              children: [
                Text('Order Date & Time:  ',style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w400,color: blackColor),),
                Text('05-08-2023  18:13:06',style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w500,color: blackColor)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 11,bottom: 11),
              child: Row(
                children: [
                  Text('No of Items in Order:  ',style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w400,color: blackColor),),
                  Text('05',style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w500,color: blackColor)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Payment Mode : Pay in Cash',style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w500,color: blackColor)),
                Text('Total : ₹ 1500',style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w600,color: secondaryColor)),
              ],
            ),
          ],
        ),
      );
  }
}