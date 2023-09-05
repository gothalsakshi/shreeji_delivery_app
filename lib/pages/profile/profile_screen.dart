import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shreeji_delivery_app/theme/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: primaryColor.withOpacity(0.1),
                  blurRadius: 2,
                  spreadRadius: 5
                )
              ]
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  profileOption('Name', 'Samar', 'assets/icons/profile_icon.svg'),
                  profileOption('Email', 'Samar@gmail.com', 'assets/icons/email_icon.svg'),
                  profileOption('Phone', '+91 123456789', 'assets/icons/phone_icon.svg'),
                  profileOption('Address', 'Akshya Nagar 1st Block 1st Cross', 'assets/icons/address_icon.svg'),
                  profileOption('Mapped Area', 'Saki Naka, Marol', 'assets/icons/location_icon.svg'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget profileOption(String title,String subtitle,String assest){
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
                children: [
                  CircleAvatar(
                      backgroundColor: primaryColor,
                      radius: 17,
                      child: SvgPicture.asset(assest)),
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: blackColor.withOpacity(0.5))),
                        Text(subtitle,
                          overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.montserrat(
                                
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: blackColor))
                      ],
                    ),
                  )
                ],
              ),
    );
  }
}
