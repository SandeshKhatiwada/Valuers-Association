// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valuer_association/screens/property%20details/edit_details.dart';
import 'package:valuer_association/screens/property%20details/view_details.dart';

class dropdown extends StatelessWidget {
  dropdown({
    this.backgroundcolor,
    required this.borderRadius,
    required this.onTap,
    required this.text,
    this.textColor,
    required this.icon,
    required this.fontSize,
    Key? key,
  }) : super(key: key);

  VoidCallback onTap;
  Color? textColor;
  Color? backgroundcolor;
  double borderRadius;
  String text;
  Widget icon;
  double fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          color: backgroundcolor,
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
            child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                text,
                style: TextStyle(fontSize: fontSize, color: textColor),
              ),
            ),
            icon,
          ],
        )),
      ),
    );
  }
}

class propertyDetails extends StatelessWidget {
  const propertyDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 5, spreadRadius: 2)
          ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Plot Address",
              style: GoogleFonts.openSans(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Goldhunga Tarkeshwor 4600, Nepal",
              style: GoogleFonts.openSans(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Bagmati Provience",
                  style: GoogleFonts.openSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "|",
                  style: GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Kathmandu",
                  style: GoogleFonts.openSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "|",
                  style: GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Tarkeshwor",
                  style: GoogleFonts.openSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Text(
              "Sheet Number / Property ID",
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Market Price",
                      style: GoogleFonts.openSans(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Rs. 16,00,000 per Aana",
                      style: GoogleFonts.openSans(
                          fontSize: 15, color: Colors.black54),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Year of Sale",
                      style: GoogleFonts.openSans(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "2078-10-01",
                      style: GoogleFonts.openSans(
                          fontSize: 15, color: Colors.black54),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 12),
            Row(
              children: [
                MaterialButton(
                  height: 30,
                  color: Color(0XFF116D9D),
                  onPressed: () {
                    Get.to(ViewPropertyDetails());
                  },
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.doc_chart,
                        size: 22,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "View",
                        style: GoogleFonts.openSans(
                            fontSize: 12, color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10),
                MaterialButton(
                  height: 30,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF116D9D))),
                  onPressed: () {
                    Get.to(EditDetailsProperty());
                  },
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.pencil_ellipsis_rectangle,
                          size: 22, color: Color(0XFF116D9D)),
                      SizedBox(width: 5),
                      Text(
                        "Edit",
                        style: GoogleFonts.openSans(
                            fontSize: 12, color: Color(0XFF116D9D)),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10),
                MaterialButton(
                  height: 30,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF116D9D))),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.delete,
                          size: 22, color: Color(0XFF116D9D)),
                      SizedBox(width: 5),
                      Text(
                        "Delete",
                        style: GoogleFonts.openSans(
                            fontSize: 12, color: Color(0XFF116D9D)),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
