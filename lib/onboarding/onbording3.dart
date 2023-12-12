import 'package:flutter/material.dart';
import 'package:tailwag/onboarding/onbording4.dart';
class onbording3 extends StatefulWidget {
  const onbording3({super.key});

  @override
  State<onbording3> createState() => _onbording3State();
}

class _onbording3State extends State<onbording3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.cover,  image: AssetImage('assets/onboarding-3.png'))
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>onbording4()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
