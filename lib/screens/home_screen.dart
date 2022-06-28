import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valuer_association/screens/Drawer/drawer_screen.dart';
import 'package:valuer_association/screens/profile_settings.dart';
import 'package:valuer_association/screens/property%20details/total_property_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      backgroundColor: Color(0XFF116D9D),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 11),
                            child: IconButton(
                                onPressed: () {
                                  globalKey.currentState!.openDrawer();
                                },
                                icon: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                  size: 35,
                                )),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                CupertinoIcons.person_alt_circle,
                                color: Colors.white,
                                size: 55,
                              )),
                          SizedBox(width: 20),
                          Padding(
                            padding: const EdgeInsets.only(top: 9),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Welcome",
                                  style: GoogleFonts.openSans(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Krishna Lamsal",
                                  style: GoogleFonts.openSans(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: IconButton(
                          alignment: Alignment.centerRight,
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.bell_solid,
                            color: Colors.white,
                            size: 35,
                          )),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45))),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "USER DASHBOARD",
                        style: GoogleFonts.openSans(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF116D9D)),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 8,
                              )
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.grey[200],
                                child: Icon(
                                  CupertinoIcons.house_fill,
                                  color: Color(0XFF116D9D),
                                  size: 45,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Column(
                              children: [
                                Text(
                                  "1506",
                                  style: GoogleFonts.openSans(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFF116D9D)),
                                ),
                                Text(
                                  "Total Property",
                                  style: GoogleFonts.openSans(
                                      fontSize: 22,
                                      // fontWeight: FontWeight.bold,
                                      color: Color(0XFF116D9D)),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 45),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(TotalPropertyPage());
                            },
                            child: Image.asset(
                              "assets/tpd.png",
                              //height: 50,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image.asset(
                              "assets/ap.png",
                              //height: 50,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Image.asset(
                              "assets/upload.png",
                              //height: 50,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(ProfileSetings());
                            },
                            child: Image.asset(
                              "assets/ps.png",
                              //height: 50,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
      drawer: DrawerScreen(),
    );
  }
}
