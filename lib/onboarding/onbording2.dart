import 'package:flutter/material.dart';
import 'package:tailwag/onboarding/onbording3.dart';
class onbording2 extends StatefulWidget {
  const onbording2({super.key});

  @override
  State<onbording2> createState() => _onbording2State();
}

class _onbording2State extends State<onbording2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover,  image: AssetImage('assets/onboarding-2.png'))
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>onbording3()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
