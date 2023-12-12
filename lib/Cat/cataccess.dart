import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tailwag/process/homepagemodel.dart';

class catacess extends StatefulWidget {
  const catacess({super.key});

  @override
  State<catacess> createState() => _catacessState();
}

class _catacessState extends State<catacess> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: HexColor('F2DFB2'),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 30,
                        left: 30,
                      ),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 35,
                        color: Colors.brown,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70, top: 40),
                      child: Text(
                        'Accessories',
                        style: GoogleFonts.abhayaLibre(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: HexColor('7A5600')),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                        width: 350,
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Serch',
                                prefixIcon: Icon(Icons.search),
                                suffixIcon: Icon(Icons.menu)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 1200,
                      child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: maintenance2.length,
                          gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 5,
                              crossAxisCount: 2,
                              childAspectRatio: 0.7),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      height: 180,
                                      width: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            // blurRadius: ,
                                          ),
                                        ],
                                        color: HexColor('EDC056'),
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: maintenance2[index]
                                            ['image8']),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    maintenance2[index]['text'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        color: HexColor('604401')),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Row(
                                    children: [
                                      Icon(Icons.currency_rupee),
                                      Text(
                                        maintenance2[index]['title'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
