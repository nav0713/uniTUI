// @dart=2.9
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui/main.dart';

class GridViewDemo extends StatefulWidget {
  @override
  _GridViewDemoState createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo> {
  List<GridListItems> roles = [
    GridListItems(
        color: Colors.amber,
        title: 'Barangay Chaiperson',
        icon: Icons.directions_bike),
    GridListItems(
        color: Colors.redAccent,
        title: 'Check Point In-charge',
        icon: Icons.directions_boat),
    GridListItems(
        color: Colors.orangeAccent,
        title: 'Health Monitoring In-Charge',
        icon: Icons.health_and_safety),
    GridListItems(
        color: Colors.blueAccent,
        title: 'Health Officer In-Charge',
        icon: Icons.health_and_safety_outlined),
    GridListItems(
        color: Colors.redAccent,
        title: 'Office/Branch Cheif',
        icon: Icons.directions_walk),
    GridListItems(
        color: Colors.pinkAccent,
        title: 'Purok/President',
        icon: Icons.contact_mail),
    GridListItems(
        color: Colors.limeAccent,
        title: 'QR Code Scanner',
        icon: Icons.directions_bike),
    GridListItems(
        color: Colors.red,
        title: 'Registration In-Charge',
        icon: Icons.directions_boat),
    GridListItems(
        color: Colors.blueAccent,
        title: 'Super Admin',
        icon: Icons.directions_bus),
    GridListItems(
        color: Colors.orangeAccent,
        title: 'Train',
        icon: Icons.directions_railway),
  ];

  // List<GridLayout> options = [
  //   GridLayout(title: 'Home', icon: Icons.home),
  //   GridLayout(title: 'Email', icon: Icons.email),
  //   GridLayout(title: 'Alarm', icon: Icons.access_alarm),
  //   GridLayout(title: 'Wallet', icon: Icons.account_balance_wallet),
  //   GridLayout(title: 'Backup', icon: Icons.backup),
  //   GridLayout(title: 'Book', icon: Icons.book),
  //   GridLayout(title: 'Camera', icon: Icons.camera_alt_rounded),
  //   GridLayout(title: 'Person', icon: Icons.person),
  //   GridLayout(title: 'Print', icon: Icons.print),
  //   GridLayout(title: 'Phone', icon: Icons.phone),
  //   GridLayout(title: 'Notes', icon: Icons.speaker_notes),
  //   GridLayout(title: 'Music', icon: Icons.music_note_rounded),
  //   GridLayout(title: 'Car', icon: Icons.directions_car),
  //   GridLayout(title: 'Bicycle', icon: Icons.directions_bike),
  //   GridLayout(title: 'Boat', icon: Icons.directions_boat),
  //   GridLayout(title: 'Bus', icon: Icons.directions_bus),
  //   GridLayout(title: 'Train', icon: Icons.directions_railway),
  //   GridLayout(title: 'Walk', icon: Icons.directions_walk),
  //   GridLayout(title: 'Contact', icon: Icons.contact_mail),
  //   GridLayout(title: 'Duo', icon: Icons.duo),
  //   GridLayout(title: 'Hour', icon: Icons.hourglass_bottom),
  //   GridLayout(title: 'Mobile', icon: Icons.mobile_friendly),
  //   GridLayout(title: 'Message', icon: Icons.message),
  //   GridLayout(title: 'Key', icon: Icons.vpn_key),
  //   GridLayout(title: 'Wifi', icon: Icons.wifi),
  //   GridLayout(title: 'Bluetooth', icon: Icons.bluetooth),
  //   GridLayout(title: 'Smile', icon: Icons.sentiment_satisfied),
  //   GridLayout(title: 'QR', icon: Icons.qr_code),
  //   GridLayout(title: 'ADD', icon: Icons.add_box),
  //   GridLayout(title: 'Link', icon: Icons.link),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: (5 / 5.5),
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(10.0),
          children: roles
              .map(
                (data) => GestureDetector(
                    onTap: () {
                      // Navigator.of(context).pushNamed(RouteName.GridViewBuilder);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.red),
                          color: Colors.white,
                          boxShadow: const [],
                          borderRadius: BorderRadius.all(Radius.circular(8))),

                      padding: const EdgeInsets.all(8),

                      //  margin:EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      //color:data.color,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            data.icon,
                            color: Colors.red,
                            size: 72,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(data.title,
                              style: const TextStyle(
                                  fontSize: 18, color: Colors.black87),
                              textAlign: TextAlign.center)
                        ],
                      ),
                    )),
              )
              .toList(),
        ),
      ),
    );
  }
}

class GridOptions extends StatelessWidget {
  final GridLayout layout;
  GridOptions({this.layout});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: RandomColor().getColor(),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              layout.icon,
              size: 40,
            ),
            Text(
              layout.title,
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RandomColor {
  Random random = Random();
  Color getColor() {
    return Color.fromARGB(random.nextInt(255), random.nextInt(255),
        random.nextInt(255), random.nextInt(255));
  }
}

class GridLayout {
  final String title;
  final IconData icon;

  GridLayout({this.title, this.icon});
}

class GridListItems {
  Color color;
  final String title;
  final IconData icon;
  GridListItems({this.color, this.title, this.icon});
}
