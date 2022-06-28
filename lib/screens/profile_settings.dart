import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valuer_association/screens/Drawer/drawer_screen.dart';

class ProfileSetings extends StatefulWidget {
  const ProfileSetings({Key? key}) : super(key: key);

  @override
  State<ProfileSetings> createState() => _ProfileSetingsState();
}

class _ProfileSetingsState extends State<ProfileSetings> {
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
              // height: MediaQuery.of(context).size.height * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45))),
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.gear_alt,
                          size: 32,
                          color: Color(0XFF116D9D),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Setting",
                          style: GoogleFonts.dmSans(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.edit,
                          size: 32,
                          color: Color(0XFF116D9D),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Form(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        SizedBox(height: 5),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Krishna Lamsal",
                              hintStyle: TextStyle(color: Colors.black38),
                              contentPadding:
                                  EdgeInsets.only(top: 15, left: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black38),
                              )),
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(height: 25),
                        Text(
                          "Email",
                          style: GoogleFonts.openSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                        SizedBox(height: 5),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "krishnalamsal@gmail.com",
                              hintStyle: TextStyle(color: Colors.black38),
                              contentPadding:
                                  EdgeInsets.only(top: 15, left: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black38),
                              )),
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(height: 25),
                        Text(
                          "Cell",
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        SizedBox(height: 5),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              hintText: "9810101010",
                              hintStyle: TextStyle(color: Colors.black38),
                              contentPadding:
                                  EdgeInsets.only(top: 15, left: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black38),
                              )),
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(height: 25),
                        Text(
                          "Phone",
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        SizedBox(height: 5),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              hintText: "01-252525",
                              hintStyle: TextStyle(color: Colors.black38),
                              contentPadding:
                                  EdgeInsets.only(top: 15, left: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black38),
                              )),
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(height: 25),
                        Text(
                          "Upload Profile Image",
                          style: GoogleFonts.dmSans(
                              fontSize: 18,
                              color: Color(0XFF116D9D),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 8),
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 2,
                                    spreadRadius: 2)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MaterialButton(
                                  height: 30,
                                  minWidth: 150,
                                  color: Colors.grey[200],
                                  shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide:
                                          BorderSide(color: Colors.grey)),
                                  onPressed: () {},
                                  child: Text(
                                    "Choose file",
                                    style: GoogleFonts.dmSans(
                                        fontSize: 17, color: Colors.black45),
                                  ),
                                ),
                                Text(
                                  "No file Choosen",
                                  style: GoogleFonts.dmSans(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      BorderSide(color: Color(0XFF116D9D))),
                              child: Text(
                                "Back",
                                style: GoogleFonts.dmSans(
                                    fontSize: 18, color: Color(0XFF116D9D)),
                              ),
                            ),
                            SizedBox(width: 20),
                            MaterialButton(
                              color: Color(0XFF116D9D),
                              onPressed: () {},
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide.none),
                              child: Text(
                                "Save",
                                style: GoogleFonts.dmSans(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ))
                  ],
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
