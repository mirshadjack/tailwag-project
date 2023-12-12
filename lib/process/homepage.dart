import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailwag/Dog/dog.dart';
import 'package:tailwag/process/homepagemodel.dart';
import 'package:hexcolor/hexcolor.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> list = [
    'assets/Banner.png',
    'assets/Banner.png',
    'assets/Banner.png',
    'assets/Banner.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        // endDrawer: Drawer(
        //   backgroundColor: Colors.brown,
        // ),
// endDrawerEnableOpenDragGesture: true,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          elevation: 0,
          backgroundColor: HexColor('F2DFB2'),
          toolbarHeight: 90,
          leading: ClipOval(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/download.jpg'))),
            ),
          ),
        //  backgroundColor: HexColor('F2DFB2'),
          actions: [
            IconButton(
              icon: Icon(Icons.notification_add,size: 35,),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Icon(
                Icons.calendar_month_outlined,
                size: 35,
              ),

            ),
            // SizedBox(
            //   width: 5,
            // ),
            Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: Icon(
                Icons.menu,
                size: 35,
              ),
            ),
            SizedBox(
              width:1,
            ),

          //  DrawerButton()
          ],
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: HexColor('F2DFB2'),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   height: 30,
                    // ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        //  crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Hey,',
                            style: GoogleFonts.abhayaLibre(
                                color: HexColor('EDC056'),
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          Text(
                            'Odlin',
                            style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          )
                        ],
                      ),
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
                                    hintText: 'Search menu',
                                    prefixIcon: Icon(Icons.search),
                                    suffixIcon: Icon(Icons.menu)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CarouselSlider(
                              items: list.map((imagepath) {
                                return Builder(builder: (BuildContext context) {
                                  return Container(
                                    // width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        //  color: Color.fromRGBO(242, 223, 178, 100)
                                        ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Stack(
                                        children: [
                                          Image.asset(
                                            imagepath,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 170, top: 10),
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/carousal.png')),
                                          ),
                                        ],
                                        // fit: BoxFit.fill,
                                      ),
                                    ),
                                  );
                                });
                              }).toList(),
                              options: CarouselOptions(
                                  autoPlay: true,
                                  aspectRatio: 1.8,
                                  enlargeCenterPage: false,
                                  viewportFraction: 1)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 260,
                          ),
                          child: Text(
                            'Categories',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: SizedBox(
                            height: 140,
                            child: GridView.builder(
                                itemCount: model1.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisSpacing: 5,
                                        crossAxisCount: 4,
                                        childAspectRatio: .7),
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ClipOval(
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                      model1[index]['navigate'] ));
                                            },
                                            child: Container(
                                                height: 80,
                                                width: 80,
                                                decoration: BoxDecoration(
                                                  color: Colors.redAccent,
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: model1[index]
                                                          ['image']),
                                                )),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        model1[index]['title'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ],
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: SizedBox(
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: food.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisSpacing: 15,
                                      mainAxisSpacing: 15,
                                      crossAxisCount: 2,
                                      childAspectRatio: 3 / 3),
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  child: Card(
                                    elevation: 15,
                                    child: Container(
                                      alignment: Alignment.bottomCenter,
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Color.fromRGBO(15, 42, 43, 100),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: food[index]['image']),
                                      ),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        height: 40,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(15),
                                                bottomRight:
                                                    Radius.circular(15)),
                                            color: Colors.black54),
                                        child: Text(
                                          food[index]['title'],
                                          style: GoogleFonts.abhayaLibre(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Top Shops',
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
                      height: 30,
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
                                  padding: const EdgeInsets.only(
                                      left: 20, bottom: 20),
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
            ],
          ),
        ),

      ),
    );
  }
}
