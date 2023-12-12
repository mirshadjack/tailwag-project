import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tailwag/process/homepagemodel.dart';
import 'package:tailwag/sittersdetails.dart';

class sitters extends StatefulWidget {
  const sitters({super.key});

  @override
  State<sitters> createState() => _sittersState();
}

class _sittersState extends State<sitters> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('F2DFB2'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 210,
                        ),
                        child: Image(image: AssetImage("assets/dog leg.png")),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 20,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              size: 30,
                              color: Colors.brown,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Container(
                                height: 30,
                                width: 200,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/Tailwagfont.png'))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 40,
                              ),
                              child: ClipOval(
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/download.jpg'))),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
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
                              hintText: 'Serch shop,sitters or etc',
                              prefixIcon: Icon(Icons.search),
                              suffixIcon: Icon(Icons.menu)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 600,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                      // controller: ScrollController(keepScrollOffset: false),
                      //   physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: sitter.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ClipOval(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => sittersdetails(
                                            img: sitter[index]['image9'],
                                            text: sitter[index]['text'],
                                          ),
                                        ));
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: sitter[index]['image9'])),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    sitter[index]['text'],
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                        color: HexColor('604401')),
                                  ),
                                  Text(
                                    sitter[index]['tittle'],
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star, color: HexColor('F2B90D')),
                                  Text(
                                    '4.8',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
