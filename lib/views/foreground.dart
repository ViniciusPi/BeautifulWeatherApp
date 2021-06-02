import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:layout_challenge/src/cities.dart';
import 'package:layout_challenge/src/locations.dart';
import 'package:layout_challenge/src/users.dart';

class Foreground extends StatefulWidget {
  @override
  _ForegroundState createState() => _ForegroundState();
}

class _ForegroundState extends State<Foreground> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    var inputBorder = OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(30));
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.7),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/images/FotoBatGirls2.jpeg'),
              backgroundColor: Colors.black26,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: DefaultTextStyle(
            style: GoogleFonts.raleway(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Hello ${lorena.id} ',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Check the wheater by the city',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  child: TextField(
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontStyle: FontStyle.italic),
                    decoration: InputDecoration(
                        border: inputBorder,
                        focusedBorder: inputBorder,
                        enabledBorder: inputBorder,
                        hintText: 'Search your City',
                        hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                  ),
                ),
                SizedBox(height: 180),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Locations',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(width: 1, color: Colors.white54),
                        shape: CircleBorder(),
                      ),
                      child: Icon(Icons.more_horiz),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (var location in locations)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                  Colors.black54, BlendMode.darken),
                              child: Image.network(
                                location.imageURL,
                                height: height * 0.35,
                              ),
                            ),
                            Column(
                              children: [
                                Text(location.name,
                                    style: TextStyle(
                                      fontSize: 15,
                                    )),
                                Text(
                                  '${location.temperature}' + '°',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text('${location.time}'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(location.weather)
                              ],
                            )
                          ],
                        ),
                      )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
