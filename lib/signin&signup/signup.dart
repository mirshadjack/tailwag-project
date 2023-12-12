import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tailwag/const.dart';
import 'package:tailwag/signin&signup/signin.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  var username = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var conpassword = TextEditingController();
  GlobalKey<FormState> loginkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/Signup.png'))),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [defaultbrown, defultdark]),
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: Form(
                          key: loginkey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Start with us!',
                                style: GoogleFonts.abhayaLibre(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black45),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(11.0),
                                child: TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "this field is requred";
                                    } else {
                                      return null;
                                    }
                                  },
                                  controller: username,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor:
                                          Color.fromRGBO(242, 223, 178, 100),
                                      labelText: 'User name',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      labelStyle: GoogleFonts.abhayaLibre(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                          color: Colors.brown)),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(11.0),
                                child: TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "This field is requird";
                                    } else {
                                      return null;
                                    }
                                  },
                                  controller: email,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor:
                                          Color.fromRGBO(242, 223, 178, 100),
                                      labelText: 'Email',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      labelStyle: GoogleFonts.abhayaLibre(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                          color: Colors.brown)),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(11.0),
                                child: TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "This field is requird";
                                    } else {
                                      return null;
                                    }
                                  },
                                  controller: password,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor:
                                          Color.fromRGBO(242, 223, 178, 100),
                                      labelText: ' Password',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      labelStyle: GoogleFonts.abhayaLibre(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                          color: Colors.brown)),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(11.0),
                                child: TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "This field is requird";
                                    } else {
                                      return null;
                                    }
                                  },
                                  controller: conpassword,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor:
                                          Color.fromRGBO(242, 223, 178, 100),
                                      labelText: 'confirm Password',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      labelStyle: GoogleFonts.abhayaLibre(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                          color: Colors.brown)),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 70,
                                width: 200,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Color.fromRGBO(122, 86, 0, 100))),
                                  onPressed: () {
                                    if (loginkey.currentState!.validate()) {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => signin(),
                                      ));
                                    }
                                  },
                                  child: Text(
                                    'SIGNUP',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Already have an account?',
                                    style: GoogleFonts.abhayaLibre(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => signin()));
                                    },
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                          color: HexColor('604401'),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
