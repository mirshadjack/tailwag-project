import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../const.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  var username = TextEditingController();
  var password = TextEditingController();
  GlobalKey<FormState> signkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
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
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: Form(
                          key: signkey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Welcome Back',
                                style: GoogleFonts.abhayaLibre(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black45),
                              ),
                              Text('Happy to see you again!! ',
                                  style: GoogleFonts.abhayaLibre(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: HexColor('604401'))),
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
                                      fillColor: const Color.fromRGBO(
                                          242, 223, 178, 100),
                                      labelText: 'User name',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      labelStyle: GoogleFonts.abhayaLibre(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                          color: Colors.brown)),
                                  style: const TextStyle(
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
                                      fillColor: const Color.fromRGBO(
                                          242, 223, 178, 100),
                                      labelText: ' Password',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      labelStyle: GoogleFonts.abhayaLibre(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                          color: Colors.brown)),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 210,),
                                child: Text(
                                  'Forgot password?',
                                  style: GoogleFonts.abhayaLibre(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 200,
                                child: ElevatedButton(
                                  style: const ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Color.fromRGBO(122, 86, 0, 100))),
                                  onPressed: () {
                                    if (signkey.currentState!.validate()) {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => const signin(),
                                      ));
                                    }
                                  },
                                  child: const Text(
                                    'LOGIN',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Dont have an account?',
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
                                              builder: (context) =>
                                                  const signin()));
                                    },
                                    child: Text(
                                      'Create account',
                                      style: TextStyle(
                                          color: HexColor('604401'),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
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
