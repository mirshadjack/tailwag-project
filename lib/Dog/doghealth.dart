import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tailwag/process/homepagemodel.dart';

class doghealth extends StatefulWidget {
  const doghealth({super.key});

  @override
  State<doghealth> createState() => _doghealthState();
}

class _doghealthState extends State<doghealth> {
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
                          itemCount: health.length,
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
                                          blurRadius: 1,
                                        ),],
                                        color: HexColor('EDC056'),
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: health[index]['image5']),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    health[index]['text'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                        color: HexColor('604401')),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    health[index]['title'],
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
                                        health[index]['subtitle'],
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                    // Icon(
                                    //   Icons.,
                                    //   size: 25,
                                    // ),
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
