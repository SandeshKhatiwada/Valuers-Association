import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290,
      child: Drawer(
        backgroundColor: Color(0XFF116D9D),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                leading: Icon(
                  CupertinoIcons.house_fill,
                  color: Colors.white,
                ),
                title: Text(
                  "DASHBOARD",
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.building_2_fill,
                  color: Colors.white,
                ),
                title: Text(
                  "Property Details",
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.cloud_upload_fill,
                  color: Colors.white,
                ),
                title: Text(
                  "Upload",
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.slider_horizontal_3,
                  color: Colors.white,
                ),
                title: Text(
                  "Settings",
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
