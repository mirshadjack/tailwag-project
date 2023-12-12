import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tailwag/process/homepagemodel.dart';

class sittersdetails extends StatefulWidget {
  sittersdetails({
    super.key,
    required this.img,
    required this.text,
  });
  var img;
  var text;
  @override
  State<sittersdetails> createState() => _sittersdetailsState();
}

class _sittersdetailsState extends State<sittersdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('F2DFB2'),
      body: Stack(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/imagesitter.png'),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 65.0),
                          child: Text(
                            widget.text,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: HexColor('604401')),
                          ),
                        ),
                        Text(
                          'Perinthlmanna kerala',
                          style:
                              TextStyle(fontSize: 20, color: HexColor('878787')),
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: HexColor('F2B90D'),
                              size: 30,
                            ),
                            Text(
                              '4.8 | 115 Ratings',
                              style: TextStyle(
                                  fontSize: 20, color: HexColor('878787')),
                            )
                          ],
                        ),

                        Column(
                          children: [
                            Text(
                              'Your Pets,Our Passion',
                              style: GoogleFonts.abhayaLibre(
                                  fontSize: 25, color: HexColor('604401')),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Icon(
                                        Icons.phone_in_talk,
                                        color: HexColor('604401'),
                                        size: 30,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        'Call',
                                        style: TextStyle(
                                            fontSize: 27,
                                            fontWeight: FontWeight.bold,
                                            color: HexColor('604401')),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.message_rounded,
                                        color: HexColor('604401'),
                                        size: 25,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Message',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: HexColor('604401')),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Details',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: HexColor('604401')),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Shih Tzus make a great addition to any family. Many pet parents choose them for their playful and affectionate demeanor as well as their small size, making them perfect for cuddling up with family members of all ages.. ',
                                style: GoogleFonts.abhayaLibre(
                                    fontSize: 20,
                                    color: HexColor('604401'),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                          child: GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                              itemCount: sitters2.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 1.0,
                                   mainAxisSpacing: 20,
                                      crossAxisCount: 4),
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    ClipOval(
                                      child: Container(
                                        height: 80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                        color: Colors.redAccent,
                                        image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: sitters2[index]
                                        ['image10']),
                                      ),
                                      ),
                                    ),
                                    Text(
                                      sitters2[index]['text'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ],
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 350,
            left: 150,
            child: CircleAvatar(
              radius: 65,
              backgroundImage: widget.img,
            ),
          )
        ],
      ),
    );
  }
}
