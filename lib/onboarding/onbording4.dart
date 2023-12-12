import 'package:flutter/material.dart';
import 'package:tailwag/signin&signup/signup.dart';
class onbording4 extends StatefulWidget {
  const onbording4({super.key});

  @override
  State<onbording4> createState() => _onbording4State();
}

class _onbording4State extends State<onbording4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.cover,  image: AssetImage('assets/onboarding-4.png'))
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              icon: Padding(
                padding: const EdgeInsets.all(15.0),
                child: const Icon(Icons.arrow_circle_right_rounded,size: 50,color: Colors.brown,),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
