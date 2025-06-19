// Name:  Abobaker Ahmed
// Title: Ex1 of Flutter 101 - Doctor Page

import "package:flutter/material.dart";

void main() {
  runApp(MyApp()); // Where the project will be started
} // main

// This class contains the material of out app
class MyApp extends StatelessWidget {
  // This an overrided fun from StatelessWidget that returns the MaterialApp
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

// This class contains the design of the home page of our app
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Doctors"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.cyan[800],
        ),
        drawer: Drawer(),
        body: Padding(
          padding: EdgeInsets.all(12),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // the first section
            Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 164,
                      height: 220,
                      child: Image(
                          image: AssetImage("assets/doctor_image.png"),
                          fit: BoxFit.fill),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.cyan[200])), // container of the image

                  SizedBox(width: 28),

                  // the column of the left-hand side
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8),

                        Container(
                          width: 200,
                          child: Text(
                            "Dr.Nourah Mohammed",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Heart Speailist",
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[700]),
                        ),
                        SizedBox(height: 32),

                        // the contact icons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            contactIcons(Icons.mail),
                            SizedBox(width: 16),
                            contactIcons(Icons.phone),
                            SizedBox(width: 16),
                            contactIcons(Icons.video_call)
                          ],
                        ) // row of the contact icons
                      ]) // the column of the right-hand side
                ]), // row of the first section

            SizedBox(height: 16),

            Text("About", style: TextStyle(fontSize: 24)),
            SizedBox(height: 4),
            Text(
                "A Heart Speailist doctor with experiens more than 10 years.\nShe studed at London University from 1993 to 1998 and finish it with grade A+.\nShe is your best chose!",
                style: TextStyle(color: Colors.grey[700], fontSize: 16)),

            SizedBox(height: 59),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // the left-hand side
                Column(
                  children: [
                    Text("Address", style: TextStyle(fontSize: 16)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.room,
                            color: Colors.grey[700]), //the address icon,
                        SizedBox(width: 4),
                        Text(
                            "House 2 Road 5\nSaudi Arabia, Riyadh\nKing Faisal Hosbital",
                            style: TextStyle(
                                color: Colors.grey[700], fontSize: 12))
                      ],
                    ), // the address

                    SizedBox(
                      height: 16,
                    ),

                    Text("Schedule", style: TextStyle(fontSize: 16)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.watch_later,
                            color: Colors.grey[700]), // the hours icon,
                        SizedBox(width: 4),

                        Text("Sunday - Friday        \n9:00 AM - 5:00 PM",
                            style: TextStyle(
                                color: Colors.grey[700], fontSize: 12))
                      ],
                    ), // row of Schedule
                  ],
                ), // column of the left-hand side

                SizedBox(width: 20),

                Image(
                  image: AssetImage("assets/map_image.JPG"),
                  fit: BoxFit.fitWidth,
                  width: 210,
                  height: 168,
                ),
              ],
            )
          ]), // column of the home page
        )); // Scaffold
  } // build
} // HomePage

Container contactIcons(IconData myIcon) {
  return Container(
    width: 48,
    height: 48,
    decoration: BoxDecoration(
        color: Colors.cyan[200], borderRadius: BorderRadius.circular(18)),
    child: Icon(
      myIcon,
      color: Colors.cyan[850],
      size: 38,
    ),
  );
}
