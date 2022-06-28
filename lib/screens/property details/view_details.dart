import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewPropertyDetails extends StatefulWidget {
  const ViewPropertyDetails({Key? key}) : super(key: key);

  @override
  State<ViewPropertyDetails> createState() => _ViewPropertyDetailsState();
}

class _ViewPropertyDetailsState extends State<ViewPropertyDetails> {
  double ph = Get.size.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF116D9D),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          size: 32,
                          color: Colors.white,
                        )),
                    SizedBox(width: 15),
                    Text(
                      "View Propertied Details",
                      style: GoogleFonts.openSans(
                          fontSize: 20, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: ph * 0.9,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      SizedBox(height: 110),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Text(
                              "General Information",
                              style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0XFF116D9D)),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Color(0XFF116D9D),
                        thickness: 3,
                        indent: 20,
                        endIndent: 20,
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black45),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black38,
                                    blurRadius: 2,
                                    spreadRadius: 2)
                              ]),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 50, top: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Sheet number",
                                      style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14),
                                    ),
                                    Text(
                                      "1,997",
                                      style: GoogleFonts.dmSans(
                                          color: Colors.black54),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 50),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Area of land",
                                      style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14),
                                    ),
                                    Text(
                                      "5",
                                      style: GoogleFonts.dmSans(
                                          color: Colors.black54),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 50),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Year of sale",
                                      style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "2058",
                                      style: GoogleFonts.dmSans(
                                          color: Colors.black54),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 50),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Frontage Type",
                                      style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Metre",
                                      style: GoogleFonts.dmSans(
                                          color: Colors.black54),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 50),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Type of abutting road",
                                      style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "One-side",
                                      style: GoogleFonts.dmSans(
                                          color: Colors.black54),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 50),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Boundary of land",
                                      style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Present",
                                      style: GoogleFonts.dmSans(
                                          color: Colors.black54),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 50),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Property Number",
                                      style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "1997",
                                      style: GoogleFonts.dmSans(
                                          color: Colors.black54),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 50),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Area of land type",
                                      style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Anna",
                                      style: GoogleFonts.dmSans(
                                          color: Colors.black54),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 50),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Frontage",
                                      style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "10",
                                      style: GoogleFonts.dmSans(
                                          color: Colors.black54),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 50),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Land View",
                                      style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "Land",
                                      style: GoogleFonts.dmSans(
                                          color: Colors.black54),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 50),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Land Parcel shape",
                                      style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "rectangular",
                                      style: GoogleFonts.dmSans(
                                          color: Colors.black54),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 50),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Market Price",
                                      style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "Rs. 16,00,000 per anna",
                                      style: GoogleFonts.dmSans(
                                          color: Colors.black54),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: -60,
                    left: MediaQuery.of(context).size.width * 0.06,
                    child: Container(
                      height: 150,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MaterialButton(
                                  color: Color(0XFF116D9D),
                                  height: 30,
                                  shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide.none),
                                  onPressed: () {},
                                  child: Text(
                                    "General Information",
                                    style: GoogleFonts.openSans(
                                        fontSize: 13, color: Colors.white),
                                  ),
                                ),
                                MaterialButton(
                                  height: 30,
                                  shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide:
                                          BorderSide(color: Color(0XFF116D9D))),
                                  onPressed: () {},
                                  child: Text(
                                    "Location Information",
                                    style: GoogleFonts.openSans(
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MaterialButton(
                                  height: 30,
                                  shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide:
                                          BorderSide(color: Color(0XFF116D9D))),
                                  onPressed: () {},
                                  child: Text(
                                    "Others Information",
                                    style: GoogleFonts.openSans(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                MaterialButton(
                                  height: 30,
                                  shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide:
                                          BorderSide(color: Color(0XFF116D9D))),
                                  onPressed: () {},
                                  child: Text(
                                    "Road Side Information",
                                    style: GoogleFonts.openSans(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          MaterialButton(
                            height: 30,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    BorderSide(color: Color(0XFF116D9D))),
                            onPressed: () {},
                            child: Text(
                              "Property Image",
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            )
          ],
        ),
      )),
    );
  }
}
