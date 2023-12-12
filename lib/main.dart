import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tailwag/Cat/catfood.dart';
import 'package:tailwag/Cat/cattreats.dart';
import 'package:tailwag/Dog/dogfood.dart';
import 'package:tailwag/firebase_options.dart';
import 'package:tailwag/onboarding/onbording3.dart';
import 'package:tailwag/onboarding/onbording4.dart';
import 'package:tailwag/process/homepage.dart';
import 'package:tailwag/signin&signup/signin.dart';
import 'package:tailwag/signin&signup/signup.dart';
import 'package:tailwag/sitters.dart';
import 'package:tailwag/sittersdetails.dart';
import 'package:tailwag/splastailwag.dart';

import 'Cat/cat.dart';
import 'Cat/cataccess.dart';
import 'Cat/cathealth.dart';
import 'Dog/dog.dart';
import 'Dog/dogacsess.dart';
import 'Dog/doghealth.dart';
import 'Dog/dogtreats.dart';
import 'onboarding/onbording1.dart';
import 'onboarding/onbording2.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: sitters()
    );
  }
}
