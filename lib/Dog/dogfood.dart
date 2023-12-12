import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tailwag/process/homepagemodel.dart';

class dogfood extends StatefulWidget {
  const dogfood({super.key});

  @override
  State<dogfood> createState() => _dogfoodState();
}

class _dogfoodState extends State<dogfood> {
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
                                hintText: 'Serch',
                                prefixIcon: Icon(Icons.search),
                                suffixIcon: Icon(Icons.filter_list)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 120,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              // color: HexColor('F2DFB2'),
                            )
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: HexColor('EDC056'),
                        ),
                        child: Row(children: [
                          Text(
                            'Starter',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          Image(image: AssetImage('assets/strtr img.png')),
                        ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 120,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              // color: HexColor('F2DFB2'),
                            )
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: HexColor('EDC056'),
                        ),
                        child: Row(children: [
                          Text(
                            'Puppy',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          Image(image: AssetImage('assets/puppyfood.png')),
                        ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 120,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              // color: HexColor('F2DFB2'),
                            )
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: HexColor('EDC056'),
                        ),
                        child: Row(children: [
                          Text(
                            'Adult',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          Image(image: AssetImage('assets/adultfood.png')),
                        ]),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 140,
                    child: GridView.builder(
                        // scrollDirection: Axis.vertical,
                        itemCount: wetfoods.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 5,
                            crossAxisCount: 4,
                            childAspectRatio: .7),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipOval(
                                  child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        color: HexColor('84AC9D'),
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: wetfoods[index]['image3']),
                                      )),
                                ),
                              ),
                              Text(
                                wetfoods[index]['text'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                            ],
                          );
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Shop by Brands',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: brands.length,
                      itemBuilder: (context, index) {
                       return Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Container(
                               height: 150,
                               width: 150,
                               decoration: BoxDecoration(
                                 color:HexColor('A7B9E9'),
                                   image: DecorationImage(
                                       fit: BoxFit.cover,
                                       image: brands [index]['image4'])),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text(
                               brands[index]['text'],
                               style: TextStyle(
                                   fontSize: 23,
                                   fontWeight: FontWeight.bold,
                                   color: HexColor('604401')),
                             ),
                           ),
                         ],
                       );
                      }),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Top pics',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 185),
                      child: Text(
                        'See all',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: 380,
                  child: ListView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: dogmodel.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 180,
                                width: 180,
                                decoration: BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(
                                        blurRadius: 7,
                                        color: HexColor('F2DFB2'),
                                      )
                                    ] ,
                                    borderRadius:
                                    BorderRadius.circular(20),
                                    color: HexColor('EDC056'),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: dogmodel[index]
                                        ["image1"])),
                              ),
                            ),
                            SizedBox(
                              width: 180,
                              child: Text(
                                dogmodel[index]['text'],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: HexColor('604401'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 150,
                              child: Text(
                                dogmodel[index]['title'],
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.attach_money_sharp,
                                  size: 25,
                                ),
                                Text(
                                  dogmodel[index]['subtitle'],
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        );
                      }),
                ),
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: shop.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,bottom: 20),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: shop[index]['image2'])),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                height: 100,
                                width: 150,
                                child: Column(
                                  children: [
                                    Text(
                                      shop[index]['text'],
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: HexColor('604401')),
                                    ),
                                    Text(
                                      shop[index]['subtitle'],
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54),
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.star,
                                            color: HexColor('F2B90D')),
                                        Text(
                                          '4.8',
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,color: Colors.black54),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
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
    );
  }
}
