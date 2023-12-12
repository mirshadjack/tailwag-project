import 'package:flutter/material.dart';
import 'package:tailwag/onboarding/onbording1.dart';
class splas extends StatefulWidget {
  const splas({super.key});
  @override
  State<splas> createState() => _splasState();
}

class _splasState extends State<splas> {
  @override
    Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5),(){
      if(context!=null && context.mounted){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>onbording1()));
      }
    });

    return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.cover,
                  image: AssetImage('assets/Splash screen.png'))
          ),

        ),
      );
    }
  }

