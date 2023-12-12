// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:tailwag/process/homepage.dart';
// class bottom extends StatefulWidget {
//   const bottom({Key? key}) : super(key: key);
//   @override
//   State<bottom> createState() => _bottomState();
// }
// class _bottomState extends State<bottom> {
//   var indexnum=0;
//   List pot=[
//       homepage(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         items: [BottomNavigationBarItem(icon: Icon(Icons.shop_two,),label:
//         "Shop"),
//           BottomNavigationBarItem(icon: Icon(Icons.access_time_sharp,),label:
//           "History"),
//           BottomNavigationBarItem(icon: Container(height: 53,width:
//           53,decoration: BoxDecoration(borderRadius: BorderRadius.circular(33),color:
//           HexColor("7A5600")),child: Image.asset("img/paw.png",color:
//           Colors.white,)),label: ""),
//           BottomNavigationBarItem(icon: Icon(Icons.settings_sharp,),label:
//           "Settings"),
//           BottomNavigationBarItem(icon: Icon(Icons.person_pin,),label:
//           "Profile")
//         ],
//         currentIndex:indexnum ,
//         onTap: (int index){
//           setState(() {
//             indexnum=index;
//           });
//         },
//         showUnselectedLabels: true,
//         selectedItemColor: Colors.black54,
//         unselectedItemColor: Colors.black26,
//       ),
//       body: pot.elementAt(indexnum),
//     );
//   }
