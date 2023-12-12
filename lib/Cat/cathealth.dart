import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tailwag/process/homepagemodel.dart';

class cathealth extends StatefulWidget {
  const cathealth({super.key});

  @override
  State<cathealth> createState() => _cathealthState();
}

class _cathealthState extends State<cathealth> {
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
                      padding: const EdgeInsets.only(left: 10, top: 40),
                      child: Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/foods letter.png'))),
                      ),
                    ),
                  ],
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
                                suffixIcon: Icon(Icons.filter_list)),
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
                          itemCount: cathyginix.length,
                          gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                            // mainAxisSpacing: ,
                              crossAxisSpacing: 5,
                              crossAxisCount: 2,
                              childAspectRatio: 0.5),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      height: 160,
                                      width: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow:[BoxShadow(
                                          // blurRadius: 1,
                                        ),],
                                        color: HexColor('EDC056'),
                                        image: DecorationImage(
                                            image: cathyginix[index]['image5']),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                   cathyginix[index]['text'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                        color: HexColor('604401')),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    cathyginix[index]['title'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        cathyginix[index]['subtitle'],
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                    Icon(
                                      Icons.currency_rupee_outlined,
                                      size: 13,
                                    ),
                                  ],
                                ),
                              ],
                            );
                          }),
                    ),
                    SizedBox(
                      height: 60,
                    )
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
