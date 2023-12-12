import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tailwag/Cat/cataccess.dart';
import 'package:tailwag/Cat/catfood.dart';
import 'package:tailwag/Cat/cathealth.dart';
import 'package:tailwag/Cat/cattreats.dart';
import '../process/homepagemodel.dart';

class cat extends StatefulWidget {
  const cat({super.key});

  @override
  State<cat> createState() => _catState();
}

class _catState extends State<cat> {
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
                                                'assets/cat1.webp'))),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const catfood()));
                              },
                              child: Container(
                                alignment: Alignment.bottomLeft,
                                height: 170,
                                width: 170,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 7,
                                        color: HexColor('F2DFB2'),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/food.png'))),
                                child: Container(
                                  height: 40,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(15),
                                        bottomLeft: Radius.circular(15)),
                                    color: Colors.black45,
                                  ),
                                  child: Text(
                                    'Food',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const cattreats()));
                              },
                              child: Container(
                                alignment: Alignment.bottomLeft,
                                height: 170,
                                width: 170,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 7,
                                        color: HexColor('F2DFB2'),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/treats.png'))),
                                child: Container(
                                  height: 40,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(15),
                                        bottomLeft: Radius.circular(15)),
                                    color: Colors.black45,
                                  ),
                                  child: Text(
                                    'Treats',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const cathealth()));
                              },
                              child: Container(
                                alignment: Alignment.bottomRight,
                                height: 170,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color.fromRGBO(136, 161, 142, 100),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/health.png'))),
                                child: Container(
                                  height: 40,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(15),
                                        bottomLeft: Radius.circular(15)),
                                    color: Colors.black45,
                                  ),
                                  child: Text(
                                    'Health&Hygiene',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const catacess()));
                              },
                              child: Container(
                                alignment: Alignment.bottomRight,
                                height: 170,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/Accesseries.png'))),
                                child: Container(
                                  height: 40,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    color: Colors.black45,
                                  ),
                                  child: Text(
                                    'Accessories',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
                      height: 400,
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
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 7,
                                            color: HexColor('F2DFB2'),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(20),
                                        color: HexColor('EDC056'),
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: dogmodel[index]["image1"])),
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
                  ],
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
                              padding:
                                  const EdgeInsets.only(left: 20, bottom: 20),
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
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black54),
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
