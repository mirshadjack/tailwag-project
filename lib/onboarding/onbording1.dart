import 'package:flutter/material.dart';
import 'package:tailwag/onboarding/onbording2.dart';

class onbording1 extends StatefulWidget {
  const onbording1({super.key});

  @override
  State<onbording1> createState() => _onbording1State();
}

class _onbording1State extends State<onbording1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/onboarding-1.png'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              icon: Padding(
                padding: const EdgeInsets.all(15.0),
                child: const Icon(Icons.arrow_circle_right_rounded,size: 50,color: Colors.brown,),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>onbording2()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
