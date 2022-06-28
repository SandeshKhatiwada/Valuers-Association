import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class EditDetailsProperty extends StatefulWidget {
  const EditDetailsProperty({Key? key}) : super(key: key);

  @override
  State<EditDetailsProperty> createState() => _EditDetailsPropertyState();
}

class _EditDetailsPropertyState extends State<EditDetailsProperty> {
  // bool value = false;
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId("id-1"),
        position: LatLng(27.7172, 85.3240),
      ));
    });
  }

  String? value;
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
                      "Add Propertied Details",
                      style: GoogleFonts.openSans(
                          fontSize: 20, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/location.png"),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "State",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(width: 3),
                        Text(
                          "*",
                          style: TextStyle(color: Colors.red, fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black54)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          isExpanded: true,
                          iconSize: 32,
                          value: value,
                          items: [
                            DropdownMenuItem(
                                value: "Provience 1",
                                child: Text("Provience 1")),
                            DropdownMenuItem(
                                value: "Provience 2",
                                child: Text("Provience 2")),
                            DropdownMenuItem(
                                value: "Provience 3",
                                child: Text("Provience 3")),
                            DropdownMenuItem(
                                value: "Provience 4",
                                child: Text("Provience 4")),
                            DropdownMenuItem(
                                value: "Provience 5",
                                child: Text("Provience 5")),
                            DropdownMenuItem(
                                value: "Provience 6",
                                child: Text("Provience 6")),
                            DropdownMenuItem(
                                value: "Provience 7",
                                child: Text("Provience 7"))
                          ],
                          onChanged: (Value) =>
                              setState(() => this.value = value),
                          hint: Text(
                            "Choose one",
                            style: GoogleFonts.dmSans(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "District",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(width: 3),
                        Text(
                          "*",
                          style: TextStyle(color: Colors.red, fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black54)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          isExpanded: true,
                          iconSize: 32,
                          value: value,
                          items: [
                            DropdownMenuItem(
                                value: "Jhapa", child: Text("Jhapa")),
                            DropdownMenuItem(
                                value: "Morang", child: Text("Morang")),
                            DropdownMenuItem(
                                value: "Sunsari", child: Text("Sunsari")),
                            DropdownMenuItem(
                                value: "Udayapur", child: Text("Udayapur")),
                            DropdownMenuItem(
                                value: "Dhankuta", child: Text("Dhankuta")),
                            DropdownMenuItem(
                                value: "Bhojpur", child: Text("Bhojpur")),
                            DropdownMenuItem(
                                value: "Sankhuwasabha",
                                child: Text("Sankhuwasabha"))
                          ],
                          onChanged: (Value) =>
                              setState(() => this.value = value),
                          hint: Text(
                            "Choose one",
                            style: GoogleFonts.dmSans(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Metropolitant",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(width: 3),
                        Text(
                          "*",
                          style: TextStyle(color: Colors.red, fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black54)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          isExpanded: true,
                          iconSize: 32,
                          value: value,
                          items: [
                            DropdownMenuItem(
                                value: "Barahakshetra",
                                child: Text("Barahakshetra")),
                            DropdownMenuItem(
                                value: "Kathmandu", child: Text("Kathmandu")),
                            DropdownMenuItem(
                                value: "Pokhara", child: Text("Pokhara")),
                            DropdownMenuItem(
                                value: "Biratnagar", child: Text("Biratnagar")),
                            DropdownMenuItem(
                                value: "Dharan", child: Text("Dharan")),
                            DropdownMenuItem(
                                value: "Dhankuta", child: Text("Dhankuta")),
                            DropdownMenuItem(
                                value: "Buddhashanti",
                                child: Text("Buddhashanti"))
                          ],
                          onChanged: (Value) =>
                              setState(() => this.value = value),
                          hint: Text(
                            "Choose one",
                            style: GoogleFonts.dmSans(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Ward no.",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(width: 3),
                        Text(
                          "*",
                          style: TextStyle(color: Colors.red, fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black54)),
                        hintText: "Enter Ward no.",
                        hintStyle: TextStyle(color: Colors.black38),
                        contentPadding: EdgeInsets.only(top: 15, left: 20),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Search Location",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black54)),
                        hintText: "Enter location",
                        hintStyle: TextStyle(color: Colors.black38),
                        contentPadding: EdgeInsets.only(top: 15, left: 20),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Pin location in map",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.grey[200]),
                      child: GoogleMap(
                          myLocationButtonEnabled: true,
                          myLocationEnabled: true,
                          onMapCreated: _onMapCreated,
                          markers: _markers,
                          initialCameraPosition: CameraPosition(
                            target: LatLng(27.7172, 85.3240),
                            zoom: 15,
                          )),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Longitude",
                              style: GoogleFonts.dmSans(
                                  fontSize: 16, color: Colors.black45),
                            ),
                            SizedBox(height: 5),
                            Container(
                              height: 45,
                              width: 150,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Enter Longitude",
                                    contentPadding: EdgeInsets.all(15),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    )),
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Latitude",
                              style: GoogleFonts.dmSans(
                                  fontSize: 16, color: Colors.black45),
                            ),
                            SizedBox(height: 5),
                            Container(
                              height: 45,
                              width: 150,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Enter Latitude",
                                    contentPadding: EdgeInsets.all(15),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    )),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Location of property",
                          style: GoogleFonts.dmSans(
                              fontSize: 16, color: Colors.black45),
                        ),
                        Text(
                          "*",
                          style: TextStyle(fontSize: 15, color: Colors.red),
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter ward no.",
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Sheet number",
                      style: GoogleFonts.dmSans(
                          fontSize: 16, color: Colors.black45),
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter sheet number",
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Area of land",
                          style: GoogleFonts.dmSans(
                              fontSize: 16, color: Colors.black45),
                        ),
                        Text(
                          "*",
                          style: TextStyle(fontSize: 15, color: Colors.red),
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Container(
                          width: 220,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Enter ward no.",
                                contentPadding: EdgeInsets.all(15),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      bottomLeft: Radius.circular(8)),
                                )),
                          ),
                        ),
                        Container(
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
