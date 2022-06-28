import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valuer_association/screens/Drawer/drawer_screen.dart';
import 'package:valuer_association/widgets/custom_widgets.dart';

class TotalPropertyPage extends StatefulWidget {
  const TotalPropertyPage({Key? key}) : super(key: key);

  @override
  State<TotalPropertyPage> createState() => _TotalPropertyPageState();
}

class _TotalPropertyPageState extends State<TotalPropertyPage> {
  final globalkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalkey,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 32,
                                )),
                            SizedBox(width: 15),
                            Text(
                              "Total Propertied Details",
                              style: GoogleFonts.openSans(
                                  fontSize: 20, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            globalkey.currentState!.openDrawer();
                          },
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 32,
                          ))
                    ]),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 35),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            dropdown(
                              onTap: () {},
                              text: "Provience",
                              fontSize: 10,
                              icon: Icon(
                                Icons.arrow_drop_down,
                                size: 18,
                              ),
                              borderRadius: 5,
                            ),
                            SizedBox(width: 5),
                            dropdown(
                              onTap: () {},
                              text: "District",
                              fontSize: 10,
                              icon: Icon(
                                Icons.arrow_drop_down,
                                size: 18,
                              ),
                              borderRadius: 5,
                            ),
                            SizedBox(width: 5),
                            dropdown(
                              onTap: () {},
                              text: "Municipality",
                              fontSize: 10,
                              icon: Icon(
                                Icons.arrow_drop_down,
                                size: 18,
                              ),
                              borderRadius: 5,
                            ),
                            SizedBox(width: 5),
                            dropdown(
                              onTap: () {},
                              text: "Ward",
                              fontSize: 11,
                              icon: Icon(
                                Icons.arrow_drop_down,
                              ),
                              borderRadius: 5,
                            ),
                            SizedBox(width: 5),
                            dropdown(
                              onTap: () {},
                              text: "Filter",
                              fontSize: 11,
                              textColor: Colors.white,
                              backgroundcolor: Color(0XFF116D9D),
                              icon: Icon(
                                Icons.sort,
                                size: 18,
                                color: Colors.white,
                              ),
                              borderRadius: 5,
                            ),
                          ]),
                      SizedBox(height: 20),
                      propertyDetails(),
                      SizedBox(height: 20),
                      propertyDetails(),
                      SizedBox(height: 20),
                      propertyDetails(),
                      SizedBox(height: 20),
                      propertyDetails(),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
      drawer: DrawerScreen(),
    );
  }
}
